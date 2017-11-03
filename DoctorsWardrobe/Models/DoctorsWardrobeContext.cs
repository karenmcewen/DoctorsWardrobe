using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace DoctorsWardrobe.Models
{
    public class DoctorsWardrobeContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public DoctorsWardrobeContext() : base("name=DoctorsWardrobeContext")
        {
        }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Accessory> Accessories { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Color> Colors { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Occasion> Occasions { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Season> Seasons { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Bottom> Bottoms { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.NeckWear> NeckWears { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.OuterWear> OuterWears { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Top> Tops { get; set; }

        public System.Data.Entity.DbSet<DoctorsWardrobe.Models.Outfit> Outfits { get; set; }
    }
}
