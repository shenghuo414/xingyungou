using DAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Consumer1Manager
    {
        public static List<Consumer1> GetAll()
        {
            return Consumer1Service.SelectAll();
        }

        public static List<Consumer1> SelName(string name)
        {
            return Consumer1Service.SelName(name);
        }

        public static List<Consumer1> GetPage(int pageIndex, int pageSize)
        {
            return Consumer1Service.SelectPage(pageIndex, pageSize);
        }

        public static int GetCount()
        {
            return Consumer1Service.SelectCount(); 
        }

        public static int GetName(string name)
        {
            var info = Consumer1Service.SelectName(name);
            if (info == null)
            {
                return 1;
            }
            return 0;
        }

        public static int Delete(int id)
        {
            return Consumer1Service.Delete(id);
        }

        public static int SelectPhone(string phone,string passward)
        {
            var info = Consumer1Service.SelectPhone(phone);
            if (info == null)
            {
                return 1;
            }
            if (!info.PassWord.Equals(passward))
            {
                return 2;
            }
            return 0;
        }

        public static Consumer1 SetName(string phone)
        {
            return Consumer1Service.SelectPhone(phone);
        }

        public static int AddConsumer(Consumer1 info)
        {
            return Consumer1Service.Insert(info); 
        }

        public static int Updata(string name, string phone, string address1, string address2)
        {
            return Consumer1Service.Updata(name, phone, address1, address2);
        }

        public static int UpdataTX(string name, string portrait)
        {
            return Consumer1Service.UpdataTX(name, portrait);
        }

        public static Consumer1 SelectConsumerId(int consumerId)
        {
            return Consumer1Service.SelectConsumerId(consumerId);
        }

        public static Consumer1 SelectName(string name)
        {
            return Consumer1Service.GetName(name);
        }

        public static int UpdataMoney(string name, int money)
        {
            return Consumer1Service.UpdataMoney(name, money);
        }

        public static List<Consumer1> GetArticlesByTitle(string tit)
        {
            return Consumer1Service.GetArticlesByTitle(tit);
        }
    }
}
