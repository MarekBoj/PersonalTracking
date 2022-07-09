using System;
using System.Collections.Generic;

#nullable disable

namespace PersonalTracking.DB
{
    public partial class Permission
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public DateTime PermissionStartDate { get; set; }
        public DateTime PermissionEndDate { get; set; }
        public int PermissionState { get; set; }
        public string PermissionExplantation { get; set; }
        public int PermissionDay { get; set; }

        public virtual Employee Employee { get; set; }
        public virtual Permissionstate PermissionStateNavigation { get; set; }
    }
}
