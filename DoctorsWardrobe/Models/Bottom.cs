//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoctorsWardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bottom
    {
        public int BottomID { get; set; }
        public string BottomName { get; set; }
        public string BottomPhotoURL { get; set; }
        public string BottomType { get; set; }
        public int ColorID { get; set; }
        public int OccasionID { get; set; }
        public int SeasonID { get; set; }
    
        public virtual Color Color { get; set; }
        public virtual Occasion Occasion { get; set; }
        public virtual Season Season { get; set; }
    }
}
