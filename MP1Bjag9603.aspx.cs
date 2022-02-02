using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP1Bjag9603 : System.Web.UI.Page
{
    private object txtNumberofBagels;
    private decimal bagelCost;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void StartOrder_Click(object sender, EventArgs e)
    {
        string text = lblBagelCount.Text;

        //input variable
        string strName = "";


        //variables to labels



        if (rbCarryOut.Checked == true)
        {
            lblOrderType.Text = "Carry Out";
            lblChargeTax.Text = "No";
            strName = txtName.Text;
            lblOrderFor.Text = strName;
            lblBagelCount.Text = txtNumofBagels.Text;
            lblBagelCT.Text = lblBagelCount.Text + lblTypeof.Text;
        }
        else
        {
            lblOrderType.Text = "Dine In";
            lblChargeTax.Text = "Yes";
            strName = txtName.Text;
            lblOrderFor.Text = strName;
            lblBagelCount.Text = txtNumofBagels.Text;
            lblBagelCT.Text = lblBagelCount.Text + lblTypeof.Text;
        }




        pnlCustomer.Visible = false;
        pnlDineorCarry.Visible = true;
        pnlFinishOrder.Visible = false;
    }


    protected void btnFinishOrder_Click(object sender, EventArgs e)
    {
        //panels
        pnlCustomer.Visible = false;
        pnlDineorCarry.Visible = true;
        pnlFinishOrder.Visible = false;

        //values
        string strName = txtName.Text;
       ;

        lbldineorcarry.Text = lblOrderType.Text;
        lblName.Text = txtName.Text;

        decimal decBase = 2.00m;
      
        decimal Plain = decBase;

     

        decimal decBaseWheat = decBase + 1.00m;
        decimal decBaseEverything = decBase + 1.50m;
        decimal decBaseToasted = decBase + .50m;
       




        string strbagelName = "bagels";
        string strNumberofBagels = txtNumofBagels.Text;
        string strTypeofBagel = lblTypeof.Text;
        string strToastedorNot;
        string strCreamCheeseorNot;
      

        // determine what word goes in for strTypeOfBagel
        if (rbDineIn.Checked == true)

        if (rbPlain.Checked == true)
        {
            strTypeofBagel = " Plain ";
        }

        else if (rbWheat.Checked == true)
        {
            strTypeofBagel = " Wheat ";
        }


        else if (rbEverything.Checked == true)
        {
            strTypeofBagel = " Everything ";
        }


        // determine what word goes in for strbagelName

   if (txtNumofBagels.Text != "1")
        {
            strbagelName = "bagels";
        }
   else
        {
            strbagelName = "bagel";
        }

  

        // determine what word goes in for strToasted
        if (cbToasted.Checked == true)
        {
            strToastedorNot = "Toasted ";
        }
        else
        {
            strToastedorNot = "";
        }
        if (cbCreamCheese.Checked == true)
        {
            strCreamCheeseorNot = " with Cream Cheese";
        }
        else
        {
            strCreamCheeseorNot = "";
        }
        if (rbCarryOut.Checked == true)
            if (rbPlain.Checked == true)
            {
                strTypeofBagel = " Plain ";
            }

            else if (rbWheat.Checked == true)
            {
                strTypeofBagel = " Wheat ";
            }


            else if (rbEverything.Checked == true)
            {
                strTypeofBagel = " Everything ";
            }


        // determine what word goes in for strbagelName

        if (txtNumofBagels.Text != "1")
        {
            strbagelName = "bagels";
        }
        else
        {
            strbagelName = "bagel";
        }



        // determine what word goes in for strToasted
        if (cbToasted.Checked == true)
        {
            strToastedorNot = "Toasted ";
        }
        else
        {
            strToastedorNot = "";
        }
        if (cbCreamCheese.Checked == true)
        {
            strCreamCheeseorNot = " with Cream Cheese";
        }
        else
        {
            strCreamCheeseorNot = "";
            }

            // determine what word goes in for strCreamCheese



            lblTypeof.Text = strToastedorNot + strTypeofBagel + strbagelName + strCreamCheeseorNot;
        //                  "Toasted"      "Wheat"        "bagels"       "with cream cheese"




        decimal sumPriceBagel = 2.00m;
        decimal subTotal = 0.00m;
        decimal total = 0.00m;
        decimal tax = 0.00m;

        if (rbWheat.Checked == true)
        {
            sumPriceBagel = sumPriceBagel + 1.00m;

        }

        if (rbEverything.Checked == true)
        {
            sumPriceBagel = sumPriceBagel + 1.50m;

        }

        if (cbToasted.Checked == true)
        {
            sumPriceBagel = sumPriceBagel + .50m;

        }
        if (cbCreamCheese.Checked == true)
        {
            sumPriceBagel = sumPriceBagel + 1.00m;

        }

        decimal bagelCountdec = Convert.ToDecimal(lblBagelCount.Text);
        subTotal = Math.Round((sumPriceBagel * bagelCountdec), 2);


        if (rbDineIn.Checked == true)
        {
            tax = Math.Round((subTotal * 0.07m), 2);
        }

        total = Math.Round((subTotal + tax), 2);

        string sumPriceBagelString = Convert.ToString(sumPriceBagel);
        string subTotalString = Convert.ToString(subTotal);
        string totalString = Convert.ToString(total);
        string taxString = Convert.ToString(tax);


        lblSubTotal.Text = subTotalString;
        lblEach.Text = sumPriceBagelString;
        lblTax.Text = taxString;
        lblTotal.Text = totalString;









        if (rbCash.Checked == true)
        {
            lblCashorCredit.Text = "Paying by Cash";
        }
        else if (rbCredit.Checked == true)
        {
            lblCashorCredit.Text = "Paying by Credit";
        }



        
        


        pnlFinishOrder.Visible = true;
        pnlDineorCarry.Visible = false;
        pnlCustomer.Visible = false;
        
              
    }
    


 
     


    protected void btnNextCustomer_Click(object sender, EventArgs e)
    {
        

        txtName.Text = string.Empty;
        txtNumofBagels.Text = string.Empty;
        lblTypeof.Text = string.Empty;

        rbCarryOut.Checked = true;
        rbDineIn.Checked = false;

        pnlDineorCarry.Visible = false;
        pnlCustomer.Visible = true;
        pnlFinishOrder.Visible = false;

        rbPlain.Checked = true;
        rbWheat.Checked = false;
        rbEverything.Checked = false;

        cbToasted.Checked = false;
        cbCreamCheese.Checked = false;

        rbCash.Checked = true;
        rbCredit.Checked = false;

    }
}