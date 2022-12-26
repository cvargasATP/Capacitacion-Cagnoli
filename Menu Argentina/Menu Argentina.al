pageextension 34006523 GMLocExtensionIOGC extends "IOGC Role Center"
// No. yyyy.mm.dd        Developer     Company     DocNo.         Version    Description
// -----------------------------------------------------------------------------------------------------
// 01  2018.01.01        DDS           GRUPOMAS                   NAVAR1.06  Localization ARG
{
    actions
    {

        addlast(Sections)
        {
            group("GMLocTreasury")
            {
                Caption = 'Tesorería';
                group("GMLocTransacciones")
                {
                    Caption = 'Trasacciones';
                    action("GMLocPayment Orders List")
                    {
                        RunObject = page "GMLocPayment Order List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de ordenes de pago';
                    }
                    action("GMLocReceipts List")
                    {
                        RunObject = page "GMLocReceipts List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de recibos';
                    }
                    action("GMLocTransfers List")
                    {
                        RunObject = page "GMLocTransfers List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de transferencias';
                    }
                    action("GMLocTransfer list deferred")
                    {
                        RunObject = page "GMLocTransfers list deferred";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de transferencias diferidas';
                    }
                    action("GMLocDeposit/Withdrawal list")
                    {
                        RunObject = page "GMLocDeposit/Withdrawal List";
                        ApplicationArea = all;
                        Image = Bank;
                        Caption = 'Lista de depositos/retiros';
                    }
                    action("GMLocAnnulation")
                    {
                        RunObject = page GMLocAnnulation;
                        ApplicationArea = all;
                        Image = ValueLedger;

                        Caption = 'Anulación';

                    }
                }
                group("GMLocReports")
                {

                    Caption = 'Reportes';


                    action("GMLocLocalization Reports")
                    {
                        RunObject = page "GMLocLocalization Report Selec";
                        ApplicationArea = ALL;
                        Image = Report2;
                        //Promoted = true;
                        Caption = 'Informes de localización';
                    }

                    action("GMLocRep1")
                    {
                        ApplicationArea = ALL;
                        Caption = 'Resumen de CAja Fecha Doc.';
                        Image = "Report";
                        RunObject = Report "GMLocCash Summ. p/Doc. Date";
                        ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                    }
                    action("GMLocRep2")
                    {
                        ApplicationArea = ALL;
                        Caption = 'Resumen de Caja Fecha Acred.';
                        Image = "Report";
                        RunObject = Report "GMLocCash Summ. p/Accred. Date";
                        ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                    }
                    action("GMLocRep3")
                    {
                        ApplicationArea = ALL;
                        Caption = 'Valores Pendientes';
                        Image = "Report";
                        RunObject = Report "GMLocPending Values";
                        ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                    }
                    action("GMLocRep4")
                    {
                        ApplicationArea = ALL;
                        Caption = 'Caja Detalle';
                        Image = "Report";
                        RunObject = Report "GMLocCash/Bank Detail";
                        ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                    }

                }
                group("GMLocTreasuryHist")
                {
                    Caption = 'Historico';
                    action("GMLocPosted Payment Orders List")
                    {
                        RunObject = page "GMLocPosted Payment Order List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de ordenes de pago registradas';
                    }

                    action("GMLocPosted Receipts List")
                    {
                        RunObject = page "GMLocPosted Receipts List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de recibos registrados';
                    }
                    action("GMLocPosted Transfers List")
                    {
                        RunObject = page "GMLocPosted Transfers List";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de transferencias registradas';
                    }
                    action("GMLocPosted Deposit/Withdrawal List")
                    {
                        RunObject = page "GMLocPosted Deposit/Withdra";
                        ApplicationArea = ALL;
                        Image = PaymentJournal;
                        Caption = 'Lista de depositos/retiros registrados';
                    }
                }
                group("GMLocConfig")
                {
                    Caption = 'Configuracion';
                    action("GMLocTreasury Setup")
                    {
                        RunObject = page "GMLocTreasury Setup";
                        ApplicationArea = ALL;
                        Image = Calculate;
                        Caption = 'Configuración de tesorería';
                        RunPageMode = Edit;
                    }
                    action("GMLocCash Bank Accounts list")
                    {
                        RunObject = page "GMLocCash/Bank Accounts List";
                        ApplicationArea = all;
                        Image = Bank;
                        Caption = 'Lista de cuentas bancarias';
                    }
                    action("GMLocValues list")
                    {
                        RunObject = page "GMLocValues List";
                        ApplicationArea = all;
                        Image = ValueLedger;
                        Caption = 'Lista de valores';
                    }

                }

            }


        }
        addlast(Sections)
        {
            group("GMLocARG Localization - Taxes")
            {
                Caption = 'Impuestos';

                group("GMLocPercepcion")
                {
                    Caption = 'Percepciones';
                    action("GMLocTax Jurisdictions")
                    {
                        RunObject = page "Tax Jurisdictions";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Jurisdicciones de impuesto';
                    }
                    action("GMLocTax Details")
                    {
                        RunObject = page "Tax Details";
                        ApplicationArea = ALL;
                        image = TaxDetail;
                        Caption = 'Detalles de impuesto';
                    }
                    action("GMLocTax Area")
                    {
                        RunObject = page "Tax Area List";
                        ApplicationArea = ALL;
                        Image = SalesTaxStatement;
                        Caption = 'Area impuesto';
                    }
                    action("GMLocTax Groups")
                    {
                        RunObject = page "Tax Groups";
                        ApplicationArea = ALL;
                        Image = TaxSetup;
                        Caption = 'Grupos de Impuestos';
                    }

                }
                group(GMLocRetencion)
                {
                    Caption = 'Retenciones';
                    action("GMLocTaxes")
                    {
                        RunObject = page GMLocTaxes;
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Impuestos';
                    }
                    action("GMLocwithholding Scale")
                    {
                        RunObject = page "GMLocPmt. Witholding Scale";
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Escala de retenciones';
                    }
                    action("GMLocWithholding Logic list")
                    {
                        RunObject = page "GMLocPmt. Witholding Logics Li";
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Lista de comportamientos de retenciones';
                    }
                    action("GMLocWithholding Detail")
                    {
                        RunObject = page "GMLocPmt. Witholding Detail";
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Detalle de retenciones';
                    }
                    action("GMLocExencion")
                    {
                        RunObject = page "GMLocPmt. Witholding Exentions";
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Exención retenciones';
                    }
                    action("GMLocTaxation")
                    {
                        RunObject = page "GMLocTaxation Conditions";
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Condiciones Impositivas';
                    }
                }
                group(GMLocOtros)
                {
                    Caption = 'Otros';

                    action("GMLocProvinces")
                    {
                        RunObject = page GMLocProvinces;
                        ApplicationArea = all;
                        Image = Payment;
                        Caption = 'Provincias';
                    }
                    action("GMLocFiscal type Reports Selection")
                    {
                        runobject = page "GMLocFiscal Type Reports";
                        ApplicationArea = all;
                        Image = Report2;
                        Caption = 'Selección de informes de tipo fiscal';
                    }
                    action("GMLocFiscal Type")
                    {
                        RunObject = page "GMLocFiscal Types";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Tipo fiscal';

                    }
                    action("GMLocInvoice Types")
                    {
                        RunObject = page "GMLocInvoice Type";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Tipo de factura';
                    }
                    action("GMLocPoint of Sales")
                    {
                        RunObject = page "GMLocPoint of Sale";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Punto de venta';
                    }
                    action("GMLocInvoice Series")
                    {
                        RunObject = page "GMLocInvoice Series";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Series de factura';
                    }
                    action("GMLocOtro1")
                    {
                        RunObject = page "GMLocTreasury Correction";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Corrector de Tesoreria';

                    }
                    action("GMLocOtro2")
                    {
                        RunObject = page "GMLocDocuments Correction";
                        ApplicationArea = ALL;
                        Image = CollectedTax;
                        Caption = 'Corrector de Documentos';

                    }
                    group(GMLocAFIP)
                    {
                        Caption = 'Fctura electrónica';
                        action("GMLocWS AFIP Electronic Invoice Setup")
                        {
                            RunObject = page "GMLocWS AFIP Configuracion";
                            RunPageMode = Edit;
                            ApplicationArea = ALL;
                            Image = TransmitElectronicDoc;
                            Caption = 'Configuración de factura electronica AFIP';
                        }
                        action("GMLocAfip2")
                        {
                            RunObject = page "GMLocAFIP - Document Type";
                            RunPageMode = Edit;
                            ApplicationArea = ALL;
                            Image = TransmitElectronicDoc;
                            Caption = 'AFIP - Tipo de Documento';
                        }
                        action("GMLocAfip3")
                        {
                            RunObject = page "GMLocAFIP - Tax Type";
                            RunPageMode = Edit;
                            ApplicationArea = ALL;
                            Image = TransmitElectronicDoc;
                            Caption = 'AFIP - Tipo de IVA';
                        }
                        action("GMLocAfip4")
                        {
                            RunObject = page "GMLocAFIP - Voucher Type";
                            RunPageMode = Edit;
                            ApplicationArea = ALL;
                            Image = TransmitElectronicDoc;
                            Caption = 'AFIP - Voucher Type';
                        }



                    }


                }
                group(GMLocReportes)
                {
                    Caption = 'Informes';
                    group(GMLocRepGr1)
                    {
                        Caption = 'Reportes Legales';
                        action("GMLocRep5")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro IVA Ventas';
                            Image = "Report";
                            RunObject = Report "GMLoc VAT Sales Book Group";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep9")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro IVA Ventas2';
                            Image = "Report";
                            RunObject = Report "GMLoc VAT Sales Book";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep6")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro IVA Compras';
                            Image = "Report";
                            RunObject = Report "GMLoc VAT Purchase Book Group";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep610")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro IVA Compras2';
                            Image = "Report";
                            RunObject = Report "GMLoc VAT Purchase Book";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep7")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro Diario2';
                            Image = "Report";
                            RunObject = Report "GMLoc Libro Diario 2";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }

                        action("GMLocRep11")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro Diario';
                            Image = "Report";
                            RunObject = Report "GMLocLibro Diario";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep12")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro de Retenciones';
                            Image = "Report";
                            RunObject = Report "GMLocWithholdings Book";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep13")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro de Percepciones';
                            Image = "Report";
                            RunObject = Report "GMLocPerceptions Book";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }


                    }
                    group(GMLocRepGr2)
                    {
                        Caption = 'Importacion';
                        action("GMLocRep14")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Libro de Percepciones';
                            Image = "Report";
                            RunObject = Report "GMLocARBA-CABA";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        group("Padrones")
                        {
                            Caption = 'Padrones';
                            group("ARBA")
                            {
                                Caption = 'ARBA';
                                action("GMLocMovimientos ARBA")
                                {
                                    ApplicationArea = ALL;
                                    caption = 'Padron ARBA';
                                    RunObject = page "GMLocPadron ARBA";

                                }
                            }
                            group("CABA")
                            {
                                Caption = 'CABA';


                                action("GMLocMovimientos CABA")
                                {
                                    ApplicationArea = ALL;
                                    Caption = 'Padron CABA';
                                    RunObject = page "GMLocPadron CABA";

                                }
                            }
                            group("JUJUY")
                            {
                                Caption = 'Padrón Jujuy';


                                action("GMLocMovimientos Jujuy")
                                {
                                    ApplicationArea = ALL;
                                    Caption = 'Padron Jujuy';
                                    Description = 'Movimientos Jujuy';
                                    RunObject = page "GMLocPadron Jujuy";

                                }
                            }

                            group(TUCUMAN)
                            {
                                Caption = 'Padrón Tucumán';

                                action(GMLocMovimientosGralTucuman)
                                {
                                    ApplicationArea = ALL;
                                    Caption = 'Padrón Tucumán';
                                    Description = 'Movimientos Padrón General Tucumán';
                                    RunObject = page "GMLocPadron Gral Tucuman";

                                }
                                action(GMLocMovimientosCoefTucuman)
                                {
                                    ApplicationArea = ALL;
                                    Caption = 'Movimientos Padrón de Coeficientes Tucumán';
                                    Description = 'Movimientos Padrón de Coeficientes Tucumán';
                                    RunObject = page "GMLocPadron Coef Tucuman";
                                }
                            }

                            group("Logging")
                            {
                                action(LogPadron)
                                {
                                    Caption = 'Log Padrón';
                                    ApplicationArea = ALL;
                                    RunObject = page "GMLocLog Padron";

                                }
                                action(LogProcAlicuotas)
                                {
                                    Caption = 'Log Proceso Actualización de Alícuotas';
                                    ApplicationArea = ALL;
                                    RunObject = page "GMLocLog ProcAlicuotas";

                                }
                            }

                        }
                    }
                    group(GMLocRepGr3)
                    {
                        Caption = 'Exportaciones';
                        action("GMLocRep15")
                        {
                            ApplicationArea = ALL;
                            Caption = 'IVA Percepciones';
                            Image = "Report";
                            RunObject = Report "GMLocVAT Perceptions";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep16")
                        {
                            ApplicationArea = ALL;
                            Caption = 'ARBA PErcepcion';
                            Image = "Report";
                            RunObject = Report "GMLocARBA Perception";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep17")
                        {
                            ApplicationArea = ALL;
                            Caption = 'ARBA IIBB BSAS';
                            Image = "Report";
                            RunObject = Report "GMLocARBA IIBB BSAS";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep18")
                        {
                            ApplicationArea = ALL;
                            Caption = 'AGIP IIBB CF';
                            Image = "Report";
                            RunObject = Report "GMLocAGIP IIBB CF old";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep19")
                        {
                            ApplicationArea = ALL;
                            Caption = 'SIFERE - Per. IIBB Sufridas';
                            Image = "Report";
                            RunObject = Report "GMLocSIFERE - GIT With. Suff.";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep20")
                        {
                            ApplicationArea = ALL;
                            Caption = 'SIFERE - Ret. IIBB Sufridas';
                            Image = "Report";
                            RunObject = Report "GMLocSIFERE - GIT Perc. Suff.";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep21")
                        {
                            ApplicationArea = ALL;
                            Caption = 'SICORE Sujetos retenidos';
                            Image = "Report";
                            RunObject = Report "GMLoc SICORE Withheld Subjects";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep22")
                        {
                            ApplicationArea = ALL;
                            Caption = 'SICORE';
                            Image = "Report";
                            RunObject = Report "GMLoc SICORE";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep23")
                        {
                            ApplicationArea = ALL;
                            Caption = 'SUSS';
                            Image = "Report";
                            RunObject = Report "GMLoc SUSS";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep24")
                        {
                            ApplicationArea = ALL;
                            Caption = 'Percepciones de IVA';
                            Image = "Report";
                            RunObject = Report "GMLocVAT Perceptions";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep25")
                        {
                            ApplicationArea = ALL;
                            Caption = 'CITI Compras';
                            Image = "Report";
                            RunObject = Report "GMLocR.G. 3685 CITI Compras";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                        action("GMLocRep26")
                        {
                            ApplicationArea = ALL;
                            Caption = 'CITI Ventas';
                            Image = "Report";
                            RunObject = Report "GMLocR.G. 3685 CITI Ventas";
                            ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
                        }
                    }
                }
            }
        }




    }


}