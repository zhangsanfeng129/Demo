//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class db_ROOM
    {
        public db_ROOM()
        {
            this.db_INPUT = new HashSet<db_INPUT>();
        }
    
        public int RoomNID { get; set; }
        public int RoomID { get; set; }
        public string RoomNume { get; set; }
        public string RoomImage { get; set; }
        public Nullable<decimal> RoomPrice { get; set; }
        public string RoomStat { get; set; }
    
        public virtual ICollection<db_INPUT> db_INPUT { get; set; }
        public virtual db_ROOMTYPE db_ROOMTYPE { get; set; }
    }
}
