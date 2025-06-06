﻿#pragma checksum "..\..\..\Views\CreateAccountView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "387F112C7A9169FDA1B41873B94F803A5F4EA95B051999C6BC4C2AD3C57835D9"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using Client.Properties;
using Client.Views;
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


namespace Client.Views {
    
    
    /// <summary>
    /// CreateAccountView
    /// </summary>
    public partial class CreateAccountView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 42 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image ProfilePictureImage;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ImageRouteTextBlock;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox NamesTextBox;
        
        #line default
        #line hidden
        
        
        #line 77 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SurnamesTextBox;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox EmailTextBox;
        
        #line default
        #line hidden
        
        
        #line 99 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox NickNameTextBox;
        
        #line default
        #line hidden
        
        
        #line 111 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker BirthdayDatePicker;
        
        #line default
        #line hidden
        
        
        #line 127 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox PasswordPasswordBox;
        
        #line default
        #line hidden
        
        
        #line 138 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox ConfirmPasswordPasswordBox;
        
        #line default
        #line hidden
        
        
        #line 149 "..\..\..\Views\CreateAccountView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoLogInButton;
        
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
            System.Uri resourceLocater = new System.Uri("/Client;component/views/createaccountview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Views\CreateAccountView.xaml"
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
            this.ProfilePictureImage = ((System.Windows.Controls.Image)(target));
            return;
            case 2:
            
            #line 50 "..\..\..\Views\CreateAccountView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.SelectImageButton);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ImageRouteTextBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.NamesTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.SurnamesTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.EmailTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.NickNameTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.BirthdayDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 9:
            this.PasswordPasswordBox = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 10:
            this.ConfirmPasswordPasswordBox = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 11:
            this.GoLogInButton = ((System.Windows.Controls.Button)(target));
            
            #line 153 "..\..\..\Views\CreateAccountView.xaml"
            this.GoLogInButton.Click += new System.Windows.RoutedEventHandler(this.GoLoginButton);
            
            #line default
            #line hidden
            
            #line 154 "..\..\..\Views\CreateAccountView.xaml"
            this.GoLogInButton.MouseEnter += new System.Windows.Input.MouseEventHandler(this.PlayHoverSound);
            
            #line default
            #line hidden
            return;
            case 12:
            
            #line 163 "..\..\..\Views\CreateAccountView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.CreateAccountButton);
            
            #line default
            #line hidden
            
            #line 164 "..\..\..\Views\CreateAccountView.xaml"
            ((System.Windows.Controls.Button)(target)).MouseEnter += new System.Windows.Input.MouseEventHandler(this.PlayHoverSound);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

