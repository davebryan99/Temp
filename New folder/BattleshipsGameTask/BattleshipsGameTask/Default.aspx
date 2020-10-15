<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BattleshipsGameTask._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 31px;
        }
        .auto-style10 {
            height: 31px;
            width: 6px;
        }
        .auto-style11 {
            width: 6px;
        }
        .auto-style17 {
            height: 19px;
        }
        .auto-style18 {
            height: 19px;
            width: 6px;
        }
        .auto-style19 {
            width: 65px;
            height: 19px;
        }
        .auto-style20 {
            width: 65px;
        }
        .auto-style21 {
            width: 65px;
            height: 31px;
        }
        .auto-style22 {
            width: 67px;
            height: 19px;
        }
        .auto-style23 {
            width: 67px;
        }
        .auto-style24 {
            width: 67px;
            height: 31px;
        }
        .auto-style25 {
            width: 64px;
            height: 19px;
        }
        .auto-style26 {
            width: 64px;
        }
        .auto-style27 {
            width: 64px;
            height: 31px;
        }
        .auto-style28 {
            width: 69px;
            height: 19px;
        }
        .auto-style29 {
            width: 69px;
        }
        .auto-style30 {
            width: 69px;
            height: 31px;
        }
        .auto-style31 {
            width: 56px;
            height: 19px;
        }
        .auto-style32 {
            width: 56px;
        }
        .auto-style33 {
            width: 56px;
            height: 31px;
        }
        .auto-style34 {
            width: 63px;
            height: 19px;
        }
        .auto-style35 {
            width: 63px;
        }
        .auto-style36 {
            width: 63px;
            height: 31px;
        }
        .auto-style37 {
            margin-left: 160px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style37">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="#FF0066" Text="One-sided Battleships"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Select Target" Font-Names="Comic Sans MS"></asp:Label>
            <asp:DropDownList ID="EnemyDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="EnemyDropDownList_SelectedIndexChanged" Font-Names="Comic Sans MS" Font-Size="Larger" >
            </asp:DropDownList>
            <asp:ImageButton ID="AttackButton" runat="server" ImageUrl="~/images/cannon.jpg" OnClick="AttackButton_Click" />
            <br />
        </p>
        <div>
            <br />
            <br />
            <table class="BoardFont">
                <tr>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style31">A</td>
                    <td class="auto-style34">B</td>
                    <td class="auto-style22">C</td>
                    <td class="auto-style19">D</td>
                    <td class="auto-style18">E</td>
                    <td class="auto-style19">F</td>
                    <td class="auto-style28">G</td>
                    <td class="auto-style25">H</td>
                    <td class="auto-style22">I</td>
                    <td class="auto-style17">J</td>
                </tr>
                <tr>
                   
                    <td class="auto-style32">
                        1</td>
                   
                    <td class="auto-style32">
                        <asp:ImageButton ID="a1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style35">
                        <asp:ImageButton ID="b1" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="c1" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="d1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style11">
                        <asp:ImageButton ID="e1" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="f1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style29">
                        <asp:ImageButton ID="g1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style26">
                        <asp:ImageButton ID="h1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="i1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="j1" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        2</td>
                    <td class="auto-style32">
                        <asp:ImageButton ID="a2" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style35">
                        <asp:ImageButton ID="b2" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="c2" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="d2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style11">
                        <asp:ImageButton ID="e2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="f2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style29">
                        <asp:ImageButton ID="g2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style26">
                        <asp:ImageButton ID="h2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="i2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="j2" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        3</td>
                    <td class="auto-style32">
                        <asp:ImageButton ID="a3" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style35">
                        <asp:ImageButton ID="b3" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="c3" runat="server" ImageUrl="~/images/calmsea.jpg" />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="d3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style11">
                        <asp:ImageButton ID="e3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style20">
                        <asp:ImageButton ID="f3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style29">
                        <asp:ImageButton ID="g3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style26">
                        <asp:ImageButton ID="h3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style23">
                        <asp:ImageButton ID="i3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="j3" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        4</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j4" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        5</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j5" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        6</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j6" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        7</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j7" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                     <td class="auto-style33">
                         8</td>

                     <td class="auto-style33">
                        <asp:ImageButton ID="a8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>

                    <td class="auto-style33">
                        <asp:ImageButton ID="b8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="c8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="d8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="e8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="f8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="g8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="h8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="i8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="j8" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style33">
                        9</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j9" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        10</td>
                    <td class="auto-style33">
                        <asp:ImageButton ID="a10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style36">
                        <asp:ImageButton ID="b10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="c10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="d10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style10">
                        <asp:ImageButton ID="e10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="f10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style30">
                        <asp:ImageButton ID="g10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style27">
                        <asp:ImageButton ID="h10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style24">
                        <asp:ImageButton ID="i10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton ID="j10" runat="server" ImageUrl="~/images/calmsea.jpg"  />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
