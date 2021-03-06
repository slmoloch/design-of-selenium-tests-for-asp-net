﻿using MbUnit.Framework;
using Tests.SmokeTest.Core;
using Tests.SmokeTest.PageObjects;

namespace Tests.SmokeTest
{
    [AssemblyFixture]
    public class SetUpSUT
    {
        [FixtureSetUp]
        public void CleanUpStorage()
        {
            CleanUp();
        }

        public static void CleanUp()
        {
            using (var navigator = new Navigator())
            {
                navigator.Start(Configuration.StorageAdminSiteUrl);
                var storageAdminPage = navigator.Open<StorageAdminPage>();

                navigator.Navigate<StorageAdminPage>(storageAdminPage.ClickClear);
            }
        }
    }
}