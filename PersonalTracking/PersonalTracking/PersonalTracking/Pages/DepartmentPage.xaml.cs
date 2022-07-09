using PersonalTracking.DB;
using PersonalTracking.Views;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PersonalTracking.Windows
{
    /// <summary>
    /// Interaction logic for DepartmentPage.xaml
    /// </summary>
    public partial class DepartmentPage : Window
    {
        public DepartmentPage()
        {
            InitializeComponent();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (txtDepartmentName.Text.Trim() == "")
                MessageBox.Show("Please fill the department Name area");
            else
            {
                using(PERSONELTRACKINGContext db = new PERSONELTRACKINGContext())
                {
                    Department dpt = new Department();
                    dpt.DepartmentName = txtDepartmentName.Text;
                    db.Departments.Add(dpt);
                    db.SaveChanges();
                    txtDepartmentName.Clear();
                    MessageBox.Show("Department was Added");
                }
            }
        }
    }
}
