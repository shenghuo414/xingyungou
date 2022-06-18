using DAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class OrderManager
    {
        public static int Insert(Order info)
        {
            return OrderService.Insert(info);
        }
    }
}
