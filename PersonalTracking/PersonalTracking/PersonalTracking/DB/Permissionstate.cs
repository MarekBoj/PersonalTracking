using System;
using System.Collections.Generic;

#nullable disable

namespace PersonalTracking.DB
{
    public partial class Permissionstate
    {
        public Permissionstate()
        {
            Permissions = new HashSet<Permission>();
        }

        public int Id { get; set; }
        public string StateName { get; set; }

        public virtual ICollection<Permission> Permissions { get; set; }
    }
}
