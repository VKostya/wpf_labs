using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Calc_new
{
    /// <summary>
    /// Логика взаимодействия для DialogEquation.xaml
    /// </summary>
    public partial class DialogEquation : Window
    {
        public DialogEquation()
        {
            InitializeComponent();
        }

        private bool _close;

        public new void Close()
        {
            _close = true;
            base.Close();
        }

        private void Window_Closing_1(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (_close) return;
            e.Cancel = true;
            Hide();
        }

        MainWindow wnd1 = null;

        private void btnDialogOk_Click(object sender, RoutedEventArgs e)
        {
            //this.DialogResult = true;
            wnd1 = Owner as MainWindow;
            if (wnd1 != null)
            {
                double a = double.Parse(aCoef.Text);
                double b = double.Parse(bCoef.Text);
                double c = double.Parse(cCoef.Text);
                wnd1.OutputDisplay.Text = eqSolution(a, b, c);

            }
            Close();
        }
        
        private string eqSolution (double a, double b, double c)
        {
            double x1, x2;
            //дискриминант
            var discriminant = Math.Pow(b, 2) - 4 * a * c;
            if (discriminant < 0)
            {
                return "Нет решения";
            }
            else
            {
                if (discriminant == 0) //квадратное уравнение имеет два одинаковых корня
                {
                    x1 = -b / (2 * a);
                    x2 = x1;
                }
                else //уравнение имеет два разных корня
                {
                    x1 = (-b + Math.Sqrt(discriminant)) / (2 * a);
                    x2 = (-b - Math.Sqrt(discriminant)) / (2 * a);
                }
                return "x1 = " + x1 + ", x2 = " + x2;
            }
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            wnd1.diE = null;
        }
    }
}
