﻿#pragma checksum "..\..\..\View\PageATM.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "415CAEF90BF5FE59016031E15318149468424FACD00F1BB611754B324FE10523"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using ATMA.View;
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


namespace ATMA.View {
    
    
    /// <summary>
    /// PageATM
    /// </summary>
    public partial class PageATM : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 28 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button goMap;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox listATM;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button connect;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button delete_connect;
        
        #line default
        #line hidden
        
        
        #line 81 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox search;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button cleanS;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox sector;
        
        #line default
        #line hidden
        
        
        #line 94 "..\..\..\View\PageATM.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button clean;
        
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
            System.Uri resourceLocater = new System.Uri("/ATMA;component/view/pageatm.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\PageATM.xaml"
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
            this.goMap = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\View\PageATM.xaml"
            this.goMap.Click += new System.Windows.RoutedEventHandler(this.goMap_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.listATM = ((System.Windows.Controls.ListBox)(target));
            
            #line 37 "..\..\..\View\PageATM.xaml"
            this.listATM.MouseDoubleClick += new System.Windows.Input.MouseButtonEventHandler(this.listATM_MouseDoubleClick);
            
            #line default
            #line hidden
            return;
            case 3:
            this.connect = ((System.Windows.Controls.Button)(target));
            
            #line 64 "..\..\..\View\PageATM.xaml"
            this.connect.Click += new System.Windows.RoutedEventHandler(this.connect_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.delete_connect = ((System.Windows.Controls.Button)(target));
            
            #line 71 "..\..\..\View\PageATM.xaml"
            this.delete_connect.Click += new System.Windows.RoutedEventHandler(this.delete_connect_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.search = ((System.Windows.Controls.TextBox)(target));
            
            #line 81 "..\..\..\View\PageATM.xaml"
            this.search.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.search_TextChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.cleanS = ((System.Windows.Controls.Button)(target));
            
            #line 82 "..\..\..\View\PageATM.xaml"
            this.cleanS.Click += new System.Windows.RoutedEventHandler(this.cleanS_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.sector = ((System.Windows.Controls.ComboBox)(target));
            
            #line 87 "..\..\..\View\PageATM.xaml"
            this.sector.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.sector_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.clean = ((System.Windows.Controls.Button)(target));
            
            #line 94 "..\..\..\View\PageATM.xaml"
            this.clean.Click += new System.Windows.RoutedEventHandler(this.clean_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

