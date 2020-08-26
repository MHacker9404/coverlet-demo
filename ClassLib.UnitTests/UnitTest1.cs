using System;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ClassLib.UnitTests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            //  Arrange
            var sut = new Class1();
            var expected = 4;

            //  Act
            var actual = sut.Add(2, 2);

            //  Assert
            throw new NotImplementedException();
            //actual.Should().Be(expected);
        }
    }
}
