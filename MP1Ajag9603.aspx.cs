using System;
using System.Activities.Statements;

public partial class MIS316_Default2 : System.Web.UI.Page
{
    private string DivideByZeroException;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables for the input  and the sum
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decAdd = 0;

            // read the two numbers as an input and store in variables 
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            //calculate the sum and store in a varaible
            decAdd = decValueA + decValueB;

            //output the sum to the page
            lblAdd.Text = decAdd.ToString();

        }
        catch (Exception)
        {
            //input could not be converted, display an error message 
            lblAdd.Text = "Please enter a number.";
        }
    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        {
            try
            {
                // declare variables for the input  and the sum
                decimal decValueA = 0m;
                decimal decValueB = 0m;
                decimal decSubtract = 0;

                // read the two numbers as an input and store in variables 
                decValueA = Convert.ToDecimal(txtValueA.Text);
                decValueB = Convert.ToDecimal(txtValueB.Text);

                //calculate the sum and store in a varaible
                decSubtract = decValueA - decValueB;

                //output the sum to the page
                lblSubtract.Text = decSubtract.ToString();

            }
            catch (Exception)
            {
                //input could not be converted, display an error message 
                lblSubtract.Text = "Please enter a number.";
            }
        }
    }

    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        {
            try
            {
                // declare variables for the input  and the sum
                decimal decValueA = 0m;
                decimal decValueB = 0m;
                decimal decMultiply = 0;

                // read the two numbers as an input and store in variables 
                decValueA = Convert.ToDecimal(txtValueA.Text);
                decValueB = Convert.ToDecimal(txtValueB.Text);

                //calculate the sum and store in a varaible
                decMultiply = decValueA * decValueB;

                //output the sum to the page
                lblMultiply.Text = decMultiply.ToString();

            }
            catch (Exception)
            {
                //input could not be converted, display an error message 
                lblMultiply.Text = "Please enter a number.";
            }
        }
    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        {
            try
            {
                // declare variables for the input  and the sum
                decimal decValueA = 0m;
                decimal decValueB = 0m;
                decimal decDivide = 0;

                // read the two numbers as an input and store in variables 
                decValueA = Convert.ToDecimal(txtValueA.Text);
                decValueB = Convert.ToDecimal(txtValueB.Text);



                try
                {
                    //calculate the sum and store in a varaible
                    decDivide = decValueA / decValueB;
                    lblDivide.Text = decDivide.ToString();
                }
                catch
                {
                    //output the sum to the page
                    lblDivide.Text = "Can't be divide by Zero!";
                }
            }

            catch
            {
                //input could not be converted, display an error message 

                lblDivide.Text = "Please enter a number.";
            }



        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtValueA.Text = string.Empty;
        txtValueB.Text = string.Empty;
        lblAdd.Text = string.Empty;
        lblDivide.Text = string.Empty;
        lblSubtract.Text = string.Empty;
        lblMultiply.Text = string.Empty;
    }
    protected void btnComplete_Click(object sender, EventArgs e)
    {



        try
        {

            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decAdd = 0;

            // read the two numbers as an input and store in variables 
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            //calculate the sum and store in a varaible
            decAdd = decValueA + decValueB;

            //output the sum to the page
            lblAdd.Text = decAdd.ToString();


            decimal decSubtract = 0;

            // read the two numbers as an input and store in variables 
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            //calculate the sum and store in a varaible
            decSubtract = decValueA - decValueB;

            //output the sum to the page
            lblSubtract.Text = decSubtract.ToString();




            decimal decMultiply = 0;

            // read the two numbers as an input and store in variables 
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            //calculate the sum and store in a varaible
            decMultiply = decValueA * decValueB;

            //output the sum to the page
            lblMultiply.Text = decMultiply.ToString();



            // declare variables for the input  and the sum

            decimal decDivide = 0;

            // read the two numbers as an input and store in variables 
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);


            //calculate the sum and store in a varaible
            decDivide = decValueA / decValueB;


            try
            {
                //output the sum to the page

                decDivide = decValueA / decValueB;
                lblDivide.Text = decDivide.ToString();

            }

            catch
            {
                lblDivide.Text = "Can't divide by Zero!";
            }
        }
        catch
        {
            //input could not be converted, display an error message 
            lblAdd.Text = "Please enter a number.";
            lblSubtract.Text = "Please enter a number.";
            lblDivide.Text = "Please enter a number.";
            lblMultiply.Text = "Please enter a number.";
        }
        
    }
}
