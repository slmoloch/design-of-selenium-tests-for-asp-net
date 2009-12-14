using System;
using Selenium;

namespace Tests.SmokeTest.PageObjects.Controls
{
    public class Label : ControlBase
    {
        private readonly string _selector;

        public Label(ISelenium selenium, string selector)
            : base(selenium)
        {
            _selector = selector;
        }

        public string GetText()
        {
            return Selenium.GetText(_selector);
        }

        public string Selector
        {
            get { return _selector; }
        }

        public override String ToString()
        {
            return GetText();
        }
    }
}