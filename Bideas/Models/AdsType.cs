//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bideas.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class AdsType
    {
        public AdsType()
        {
            this.Status1 = new HashSet<Status>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Status { get; set; }
        public int AdsId { get; set; }
    
        public virtual ICollection<Status> Status1 { get; set; }
        public virtual Ads Ad { get; set; }
    }
}
