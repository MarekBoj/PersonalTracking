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
    /// Interaction logic for PositionList.xaml
    /// </summary>
    public partial class PositionList : UserControl
    {
        public PositionList()
        {
            InitializeComponent();
        }
        PERSONELTRACKINGContext db = new PERSONELTRACKINGContext();
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            FillGrid();
        }
        
        void FillGrid()
        {
            var list = db.Positions.Include(X => X.Department).Select(a => new
            {
                positionId = a.Id,
                PositionName = a.PositionName,
                departmentId = a.DepartmentId,
                departmentName = a.Department.DepartmentName
            }).OrderBy(x => x.PositionName).ToList();
            List<PositionModel> modellist = new List<PositionModel>();
            foreach (var item in list)
            {
                PositionModel model = new PositionModel();
                model.Id = item.positionId;
                model.PositionName = item.PositionName;
                model.DepartmentName = item.departmentName;
                model.DepartmentId = item.departmentId;
                modellist.Add(model);

            }
            gridPosition.ItemsSource = modellist;
        }
        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            PositionPage page = new PositionPage();
            page.ShowDialog();
            FillGrid();
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            PositionModel model = (PositionModel)gridPosition.SelectedItem;
            if(model != null && model.Id != 0)
            {
                PositionPage page = new PositionPage();
                page.model = model;
                page.ShowDialog();
                FillGrid();
            }

        }
    }
}
