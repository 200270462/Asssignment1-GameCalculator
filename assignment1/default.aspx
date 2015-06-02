<%@ Page Title="Assignment 1 - GameCalculator" Language="C#" MasterPageFile="~/GameClaculator.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="assignment1._default" %>

<asp:Content ID="Game" ContentPlaceHolderID="game" runat="server">
    <div class="container">
        <h2>Game Calculator</h2>
        <div class="row alert-warning">
            All Fields are required.
        </div>

        <div class="row">
            <!--Create a Game 1 section-->
            <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <h3>Game 1</h3>
                <!--Create a Game 1 controls-->
                <!--create radio button for win and lost selection, Set require field validator-->
                <div>
                    <asp:Label ID="lblResult1" AssociatedControlID="rblResult1" runat="server">Result 1:</asp:Label>
                    <asp:RadioButtonList ID="rblResult1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ControlToValidate="rblResult1" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Result is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                </div>
                <!--create lable and text input for point scored, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPScored1" AssociatedControlID="txtPScored1" runat="server">Points Scored:</asp:Label>
                    <asp:TextBox ID="txtPScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPScored1" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored is required,and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPScored1" ControlToValidate="txtPScored1" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Points Scored must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create compare validator for point scored vs point allowed-->
                <div class="alert-warning text-warning">
                    <asp:CompareValidator ID="cvPoints1" ControlToCompare="txtPAllowed1" ControlToValidate="txtPScored1" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>
                <!--create lable and text input for point allowed, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPAllowed" AssociatedControlID="txtPAllowed1" runat="server">Points Allowed:</asp:Label>
                    <asp:TextBox ID="txtPAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPAllowed1" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPAllowed1" ControlToValidate="txtPAllowed1" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Points Allowed must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create lable and text input for Spectator, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblSpec1" AssociatedControlID="txtSpec1" runat="server">Number of Spectator:</asp:Label>
                    <asp:TextBox ID="txtSpec1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtSpec1" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvSpec1" ControlToValidate="txtSpec1" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Spectators must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
            </div>
            <!--Create a Game 2 section-->
            <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <h3>Game 2</h3>
                <!--Create a Game 2 controls-->
                <!--create radio button for win and lost selection, Set require field validator-->
                <div>
                    <asp:Label ID="lblResult2" AssociatedControlID="rblResult2" runat="server">Result 2:</asp:Label>
                    <asp:RadioButtonList ID="rblResult2" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ControlToValidate="rblResult2" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Result is required." runat="server"></asp:RequiredFieldValidator>
                </div>
                <!--create lable and text input for point scored, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPScored2" AssociatedControlID="txtPScored2" runat="server">Points Scored:</asp:Label>
                    <asp:TextBox ID="txtPScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPScored2" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPScored2" ControlToValidate="txtPScored2" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Points Scored must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create compare validator for point scored vs point allowed-->
                <div>
                    <asp:CompareValidator ID="cvPoints2" ControlToCompare="txtPAllowed2" CssClass="alert-warning text-warning" ControlToValidate="txtPScored2" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>
                <!--create lable and text input for point allowed, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPAllowed2" AssociatedControlID="txtPAllowed2" runat="server">Points Allowed:</asp:Label>
                    <asp:TextBox ID="txtPAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPAllowed2" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPAllowed2" ControlToValidate="txtPAllowed2" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Points Allowed must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create lable and text input for Spectator, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblSpec2" AssociatedControlID="txtSpec2" runat="server">Number of Spectator:</asp:Label>
                    <asp:TextBox ID="txtSpec2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtSpec2" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvSpec2" ControlToValidate="txtSpec2" CssClass="alert-warning text-warning" Display="Dynamic" ErrorMessage="Spectators must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
            </div>
            <!--Create a Game 3 section-->
            <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <h3>Game 3</h3>
                <!--Create a Game 3 controls-->
                <!--create radio button for win and lost selection, Set require field validator-->
                <div>
                    <asp:Label ID="lblResult3" AssociatedControlID="rblResult3" runat="server">Result 3:</asp:Label>
                    <asp:RadioButtonList ID="rblResult3" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ControlToValidate="rblResult3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Result is required." runat="server"></asp:RequiredFieldValidator>
                </div>
                <!--create lable and text input for point scored, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPScored3" AssociatedControlID="txtPScored3" runat="server">Points Scored:</asp:Label>
                    <asp:TextBox ID="txtPScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPScored3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored is required,and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPScored3" ControlToValidate="txtPScored3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create compare validator for point scored vs point allowed-->
                <div>
                    <asp:CompareValidator ID="cvPoints3" ControlToCompare="txtPAllowed3" ControlToValidate="txtPScored3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>
                <!--create lable and text input for point allowed, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPAllowed3" AssociatedControlID="txtPAllowed3" runat="server">Points Allowed:</asp:Label>
                    <asp:TextBox ID="txtPAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPAllowed3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPAllowed3" ControlToValidate="txtPAllowed3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create lable and text input for Spectator, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblSpec3" AssociatedControlID="txtSpec3" runat="server">Number of Spectator:</asp:Label>
                    <asp:TextBox ID="txtSpec3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtSpec3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvSpec3" ControlToValidate="txtSpec3" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
            </div>
            <!--Create a Game 4 section-->
            <div class="well col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <h3>Game 4</h3>
                <!--Create a Game 4 controls-->
                <!--create radio button for win and lost selection, Set require field validator-->
                <div>
                    <asp:Label ID="lblResult4" AssociatedControlID="rblResult4" runat="server">Result 4:</asp:Label>
                    <asp:RadioButtonList ID="rblResult4" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ControlToValidate="rblResult4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Result is required." runat="server"></asp:RequiredFieldValidator>
                </div>
                <!--create lable and text input for point scored, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPScored4" AssociatedControlID="txtPScored4" runat="server">Points Scored:</asp:Label>
                    <asp:TextBox ID="txtPScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPScored4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPScored4" ControlToValidate="txtPScored4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create compare validator for point scored vs point allowed-->
                <div>
                    <asp:CompareValidator ID="cvPoints4" ControlToCompare="txtPAllowed4" ControlToValidate="txtPScored4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>
                <!--create lable and text input for point allowed, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblPAllowed4" AssociatedControlID="txtPAllowed4" runat="server">Points Allowed:</asp:Label>
                    <asp:TextBox ID="txtPAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPAllowed4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPAllowed4" ControlToValidate="txtPAllowed4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Points Allowed must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
                <!--create lable and text input for Spectator, Set require field and range validator-->
                <div>
                    <asp:Label ID="lblSpec4" AssociatedControlID="txtSpec4" runat="server">Number of Spectator:</asp:Label>
                    <asp:TextBox ID="txtSpec4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtSpec4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators is required, and only numbers" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvSpec4" ControlToValidate="txtSpec4" CssClass="alert-danger text-danger" Display="Dynamic" ErrorMessage="Spectators must be between 0 to 10." MaximumValue="10" MinimumValue="0" Type="Integer" runat="server"></asp:RangeValidator>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
        <asp:Button ID="btnSubmit" CssClass="btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    <div class="container well center-block" id="summary" runat="server" visible="false">
        <h2>Summary:</h2>
        <div>
            <label>Number of Games won: </label>
            <asp:Label ID="lblGW" runat="server"></asp:Label>
        </div>
        <div>
            <label>Number of Games Lost: </label>
            <asp:Label ID="lblGL" runat="server"></asp:Label>
        </div>
        <div>
            <label>Winning %: </label>
            <asp:Label ID="lblWP" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Points Scored: </label>
            <asp:Label ID="lblTPS" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Point Allowed: </label>
            <asp:Label ID="lblTPA" runat="server"></asp:Label>
        </div>
        <div>
            <label>Differential of Points: </label>
            <asp:Label ID="lblDOP" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Spectators: </label>
            <asp:Label ID="lblTS" runat="server"></asp:Label>
        </div>
        <div>
            <label>Average Spectators: </label>
            <asp:Label ID="lblAS" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
