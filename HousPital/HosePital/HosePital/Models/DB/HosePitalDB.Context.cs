﻿//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HosePital.Models.DB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HoseDBEntities : DbContext
    {
        public HoseDBEntities()
            : base("name=HoseDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<db_CType> db_CType { get; set; }
        public DbSet<db_INPUT> db_INPUT { get; set; }
        public DbSet<db_MANAGER> db_MANAGER { get; set; }
        public DbSet<db_PRODUCTTYPE> db_PRODUCTTYPE { get; set; }
        public DbSet<db_PTYPE> db_PTYPE { get; set; }
        public DbSet<db_ROOM> db_ROOM { get; set; }
        public DbSet<db_ROOMTYPE> db_ROOMTYPE { get; set; }
        public DbSet<db_WORKER> db_WORKER { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}