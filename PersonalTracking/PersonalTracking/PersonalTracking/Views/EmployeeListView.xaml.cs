using Microsoft.EntityFrameworkCore;
using PersonalTracking.DB;
using PersonalTracking.Models;
using PersonalTracking.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PersonalTracking.Views
{
    /// <summary>
    /// Interaction logic for EmployeeListView.xaml
    /// </summary>
    public partial class EmployeeListView : UserControl
    {
        public EmployeeListView()
        {
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            EmployeePage page = new EmployeePage();
            page.ShowDialog();
            FillDatagrid();
        }

        PERSONELTRACKINGContext db = new PERSONELTRACKINGContext();
        List<Position> positions = new List<Position>();
        List<EmployeeModel> list = new List<EmployeeModel>();
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            FillDatagrid();
        }

        private void cmbDepartment_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int DepartmentId = Convert.ToInt32(cmbDepartment.SelectedValue);
            if(cmbDepartment.SelectedIndex != -1)
            {
                cmbPosition.ItemsSource = positions.Where(x => x.DepartmentId == DepartmentId).ToList();
                cmbPosition.DisplayMemberPath = "PositionName";
                cmbPosition.SelectedValuePath = "Id";
                cmbPosition.SelectedIndex = -1;
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            List<EmployeeModel> searchlist = list;
            if (txtUserNo.Text.Trim() != "") searchlist = searchlist.Where(x => x.UserNo == Convert.ToInt32(txtUserNo.Text)).ToList();
            if (txtName.Text.Trim() != "") searchlist = searchlist.Where(x => x.Name.Contains(txtName.Text)).ToList();
            if (txtSurname.Text.Trim() != "") searchlist = searchlist.Where(x => x.Surname.Contains(txtSurname.Text)).ToList();
            if (cmbPosition.SelectedIndex != -1) 
                searchlist = searchlist.Where(x => x.PositionId == Convert.ToInt32(cmbPosition.SelectedValue)).ToList();
            if (cmbDepartment.SelectedIndex != -1)
                searchlist = searchlist.Where(x => x.DepartmentId == Convert.ToInt32(cmbDepartment.SelectedValue)).ToList();
            gridEmployee.ItemsSource = searchlist;

        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            txtName.Clear();
            txtUserNo.Clear();
            txtSurname.Clear();
            cmbDepartment.SelectedIndex = -1;
            cmbPosition.SelectedIndex = -1;
            cmbPosition.ItemsSource = positions;
            gridEmployee.ItemsSource = list;

        }
        void FillDatagrid()
        {
            cmbDepartment.ItemsSource = db.Departments.ToList();
            cmbDepartment.DisplayMemberPath = "DepartmentName";
            cmbDepartment.SelectedValuePath = "Id";
            cmbDepartment.SelectedIndex = -1;
            positions = db.Positions.ToList();
            cmbPosition.ItemsSource = positions;
            cmbPosition.DisplayMemberPath = "PositionName";
            cmbPosition.SelectedValuePath = "Id";
            cmbPosition.SelectedIndex = -1;
            list = db.Employees.Include(x => x.Position).Include(X => X.Department).Select(X => new EmployeeModel()
            {
                Id = X.Id,
                Name = X.Name,
                Adress = X.Adress,
                BirthDay = (DateTime)X.Birthday,
                DepartmentId = X.DepartmentId,
                DepartmentName = X.Department.DepartmentName,
                isAdmin = X.IsAdmin,
                Password = X.Password,
                PositionId = X.PositionId,
                PositionName = X.Position.PositionName,
                Salary = X.Salary,
                Surname = X.Surname,
                UserNo = X.UserNo,
                ImagePath = X.ImagePath
            }).ToList();
            gridEmployee.ItemsSource = list;
        }
        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            EmployeeModel model = (EmployeeModel)gridEmployee.SelectedItem;
            if (model != null && model.Id != 0)
            {
                EmployeePage page = new EmployeePage();
                page.model = model;
                page.ShowDialog();
                FillDatagrid();
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            EmployeeModel model = (EmployeeModel)gridEmployee.SelectedItem;
            if(model!=null && model.Id != 0)
            {
                if(MessageBox.Show("Are you sure to delete this employee?", "Question", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                {
                    Employee employee = db.Employees.Find(model.Id);
                    db.Employees.Remove(employee);
                    db.SaveChanges();
                    FillDatagrid();
                }
            }
        }
    }
}