﻿#pragma checksum "..\..\UserHome.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "2396497924BB3D66763A9F478E95317A7B783FF14065782B6F56CB710BFB0E4F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using LibraryManagementSystem;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace LibraryManagementSystem {
    
    
    /// <summary>
    /// UserHome
    /// </summary>
    public partial class UserHome : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\UserHome.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel userStackPanel;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\UserHome.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnBorrow;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\UserHome.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnTransaction;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\UserHome.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnLogout;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/LibraryManagementSystem;component/userhome.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\UserHome.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.userStackPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 2:
            this.BtnBorrow = ((System.Windows.Controls.Button)(target));
            
            #line 17 "..\..\UserHome.xaml"
            this.BtnBorrow.Click += new System.Windows.RoutedEventHandler(this.BtnBorrow_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.BtnTransaction = ((System.Windows.Controls.Button)(target));
            
            #line 18 "..\..\UserHome.xaml"
            this.BtnTransaction.Click += new System.Windows.RoutedEventHandler(this.BtnTransaction_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.BtnLogout = ((System.Windows.Controls.Button)(target));
            
            #line 19 "..\..\UserHome.xaml"
            this.BtnLogout.Click += new System.Windows.RoutedEventHandler(this.BtnLogout_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

