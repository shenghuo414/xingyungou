//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ZYL1Entities : DbContext
    {
        public ZYL1Entities()
            : base("name=ZYL1Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Cat> Cats { get; set; }
        public virtual DbSet<Consumer1> Consumer1 { get; set; }
        public virtual DbSet<Good> Goods { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
    }
}
