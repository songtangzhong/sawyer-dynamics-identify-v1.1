#include <dynamics_library/robot_model.h>
#include <dynamics_library/robot_identify.h>
#include <nlopt.h>
#include <iostream>
#include <fstream>
#include <math.h>

int main(int argc, char ** argv)
{
    robot_dyn::RobotModel robot;
    robot.InitModel();

    robot.qMin << -3.0503, -3.8095, -3.0426, -3.0439, -2.9761, -2.9761, -3.14;
    robot.qMax << 3.0503, 2.2736, 3.0426, 3.0439, 2.9761, 2.9761, 3.14;
    robot.qDotMin << -1.74, -1.328, -1.957, -1.957, -3.485, -3.485, -4.545;
    robot.qDotMax << 1.74, 1.328, 1.957, 1.957, 3.485, 3.485, 4.545;
    robot.qDDotMin << -10.0, -8.0, -10.0, -10.0, -12.0, -12.0, -12.0;
    robot.qDDotMax << 10.0, 8.0, 10.0, 10.0, 12.0, 12.0, 12.0;

    robot_dyn::calcu_base_dynparam(&robot);

    robot_dyn::Fourier fourier(robot);
    fourier.wf = 0.1*2*M_PI; 
    fourier.Tf = 10.0;
    fourier.h = 0.1;
    fourier.N = 5;
    fourier.num = 10;

    unsigned int x_num = fourier.num*robot.dof;

    nlopt_opt opt;
    opt = nlopt_create(NLOPT_LN_COBYLA, x_num);
    nlopt_set_min_objective(opt, robot_dyn::optimal_object_fun, &fourier);

    unsigned m_ineq = robot.dof*3;
    double tol_ineq[m_ineq];
    for (unsigned int i=0; i<m_ineq; i++)
    {
        tol_ineq[i]=1.0e-8;
    }
    nlopt_add_inequality_mconstraint(opt, m_ineq, 
        robot_dyn::inequality_constraint, &fourier, tol_ineq);

    unsigned m_eq = robot.dof*3*2;
    double tol_eq[m_eq];
    for (unsigned int i=0; i<m_eq; i++)
    {
        tol_eq[i]=1.0e-8;
    }
    nlopt_add_equality_mconstraint(opt, m_eq, robot_dyn::equality_constraint, &fourier, tol_eq);

    nlopt_set_xtol_rel(opt, 1.0e-4);

    VectorXd xx = VectorXd::Ones(x_num);
    double x[x_num];
    for (unsigned int i=0; i<x_num; i++)
    {
        x[i] = 0.6*xx(i);
    }

    double min_f;
    nlopt_result result = nlopt_optimize(opt, x, &min_f);

    if (result < 0) 
    {
        if (result==-4)
        {
            std::cout << "Find minimum resolution successfully." << std::endl;
            std::cout << "Minimum object function: " << min_f << std::endl;
        }
        else
        {
            std::cout << "Failed to find a minimum resolution." << std::endl 
                << "Error code: " << result << std::endl;
        }
    }
    else 
    {
        std::cout << "Find minimum resolution successfully." << std::endl;
        std::cout << "Minimum object function: " << min_f << std::endl;
    }

    nlopt_destroy(opt);

    std::ofstream outfile;
    outfile.open("/home/stz/sawyer-dynamics-identify-v1.1/examples/excitation_trajectory/optimal_result/optimal_x.txt");
    outfile << "number of basic dynamics parameters (Pb_num): " << robot.Pb_num << std::endl;
    outfile << "optimal value of x is:" << std::endl;
    outfile << "[";
    for (unsigned int i=0; i<x_num; i++)
    {
        outfile << x[i];

        if (i!=(x_num-1))
        {
            outfile << ", ";
        }
    }
    outfile << "]" << std::endl;
    outfile.close();

    return 0;
}
