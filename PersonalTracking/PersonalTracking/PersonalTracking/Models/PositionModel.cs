﻿using System;
using System.Collections.Generic;
using System.Text;

namespace PersonalTracking.Models
{
    public class PositionModel
    {
        public int Id { get; set; }
        public string PositionName { get; set; }
        public string DepartmentName { get; set; }
        public int DepartmentId { get; set; }
    }
}
