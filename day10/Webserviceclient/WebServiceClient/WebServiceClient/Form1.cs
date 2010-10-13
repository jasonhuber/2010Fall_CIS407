using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WebServiceClient
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void cmdGo_Click(object sender, EventArgs e)
        {
            Hub3r.Calc.Calc myCalc = new Hub3r.Calc.Calc();

            txtResult.Text = myCalc.Add(int.Parse(txtNum1.Text),int.Parse(txtNum2.Text)).ToString();
            myCalc = null;

        }
    }
}
