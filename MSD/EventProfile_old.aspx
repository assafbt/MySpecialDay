﻿<%@ Page Title="EventProfile" Language="C#"  AutoEventWireup="true" CodeBehind="EventProfile_old.aspx.cs" Inherits="MSD.EventProfile" EnableEventValidation="false" %>


    <%--<style type="text/css">
        .selectDefualtOp {
            display: none;
            width: 200px;
            color: gray;
        }

        h1 {
            color: blue;
        }

        input {
            width: 200px;
        }

        .auto-style1 {
            width: 100px;
        }

        .auto-style2 {
            width: 28px;
        }
    </style>--%>
        <div dir="rtl" class="row">

        <%--<h1 > 555 </h1><br />--%>
        <asp:Label ID="EventOfNames" runat="server" Font-Size="Large" Font-Bold="True" /><br />
        <br />
        <asp:Label ID="lblEventUser" Text="ברוך הבא לדף האירוע שלך" runat="server" Font-Size="Large" Font-Bold="True" /><br />
        <br />
        <br />
        <form id="ceateEvent" method="post" action="main.aspx" style="background-color: azure">
            <div class="row">
                <div class="col-md-4">
                    <table border="0">
                        <tr style="height: 400px">
                            <td class="auto-style1"></td>
                            <td class="auto-style2">
                                <table>
                                    <img src="http://i1374.photobucket.com/albums/ag414/assafbt/images23_zps1e3e8c6c.jpg">
                                </table>

                            </td>
                        </tr>
                    </table>
                </div>



                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="shuttlesButton" Text="הסעות וטרמפים" OnClick="shuttlesButton_Click" />
                </div>
                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="rsvpButton" Text="אישורי הגעה" OnClick="rsvpButton_Click" />
                    
                </div>
                <br>
                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="messageButton" Text="הודעות וטיפים" OnClick="messageButton_Click" />
                </div>
                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="giftButton" Text="רשימת מתנות" OnClick="giftButton_Click" />
                    
                </div>
                <br>
                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="videoButton" Text="העלאת סרטון ברכה" OnClick="videoButton_Click" />
                </div>
                <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="blessingButton" Text="העלאת ברכה מעוצבת" OnClick="blessingButton_Click" />
                </div>
                  <div class="col-md-4">
                    <asp:Button runat="server" CssClass="submit" ID="detailsButton" Text="עדכון פרטי האירוע" OnClick="detailsButton_Click" />
                </div>
                    
                    <br>
                 
            </div>
            <footer>
                <p></p>
            </footer>
        </form>
    </div>


