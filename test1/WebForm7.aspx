<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="test1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 298px;
            height: 257px;
        }
        .auto-style3 {
            width: 338px;
        }
        .auto-style4 {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
        <img alt="test" class="auto-style2" longdesc="test" src="img/1.png" /></td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                    <br />
                       <br />
                       <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                           <ContentTemplate>
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                               <br />
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="x 3" />
                               <br />
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </p>
   
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="LIBRUB" DataValueField="NUMRUB" Width="467px">
            </asp:DropDownList>
            <br />
            <br />
            <br />
             <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [CLASSIFICATION]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1007px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
                <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE] WHERE ([NUMRUB] = @NUMRUB)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="NUMRUB" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        </ContentTemplate>
    </asp:UpdatePanel>
    <p style="box-sizing: border-box; margin-bottom: var(--margin-md); margin-top: 0px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Once enabled, the security system redirects unauthenticated visitors to the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">login_path</code><span>&nbsp;</span>when they try to access a secured place (this behavior can be customized using<span>&nbsp;</span><a class="reference internal" href="https://symfony.com/doc/current/security/access_denied_handler.html#security-entry-point" style="box-sizing: border-box; color: var(--prose-link-color); text-decoration: none; border-bottom: 1px solid var(--link-border-color);">authentication entry points</a>).</p>
    <p style="box-sizing: border-box; margin-bottom: var(--margin-md); margin-top: 0px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Edit the login controller to render the login form:</p>
    <div class="notranslate codeblock codeblock-length-md codeblock-diff" data-loc="22" style="box-sizing: border-box; display: grid; margin-bottom: var(--margin-md); position: relative; margin-left: -30px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" translate="no">
        <div class="codeblock-scroll" style="box-sizing: border-box; display: flex; flex-direction: row; overflow-x: auto;">
            <pre class="codeblock-lines" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; display: block; margin-bottom: 0px; margin-top: 0px; overflow: auto; color: var(--doc-codeblock-lines-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre; border-right: 1px solid var(--doc-codeblock-lines-border-color); flex-grow: 0; flex-shrink: 0; padding: 5px 10px 0px 5px; pointer-events: none; text-align: right; user-select: none; line-height: 25.2px;">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22</pre>
            <pre class="codeblock-code" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; display: block; margin-bottom: 0px; margin-top: 0px; overflow: auto; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre; line-height: 1.8; background: var(--doc-codeblock-background); flex: 1 1 0%; hyphens: none; padding: 5px 10px;"><code style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: inherit; font-synthesis: none; font-variant-ligatures: none; white-space: pre; border-bottom: 0px; word-break: unset; background: 0px 0px; border-radius: 0px; padding: 0px;">// ...
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+ use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;</span>

  class LoginController extends AbstractController
  {
      #[Route(&#39;/login&#39;, name: &#39;login&#39;)]
<span class="hljs-deletion" style="box-sizing: border-box; background: rgb(255, 238, 240); outline: rgb(255, 238, 240) solid 3px;">-     public function index(): Response</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+     public function index(AuthenticationUtils $authenticationUtils): Response</span>
      {
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+         // get the login error if there is one</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+         $error = $authenticationUtils-&gt;getLastAuthenticationError();</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+         // last username entered by the user</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+         $lastUsername = $authenticationUtils-&gt;getLastUsername();</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+</span>
          return $this-&gt;render(&#39;login/index.html.twig&#39;, [
<span class="hljs-deletion" style="box-sizing: border-box; background: rgb(255, 238, 240); outline: rgb(255, 238, 240) solid 3px;">-             &#39;controller_name&#39; =&gt; &#39;LoginController&#39;,</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+             &#39;last_username&#39; =&gt; $lastUsername,</span>
<span class="hljs-addition" style="box-sizing: border-box; background: rgb(230, 255, 237); outline: rgb(230, 255, 237) solid 3px;">+             &#39;error&#39;         =&gt; $error,</span>
          ]);
      }
  }</code></pre>
        </div>
    </div>
    <p style="box-sizing: border-box; margin-bottom: var(--margin-md); margin-top: 0px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Don&#39;t let this controller confuse you. Its job is only to<span>&nbsp;</span><em style="box-sizing: border-box;">render</em><span>&nbsp;</span>the form: the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">form_login</code><span>&nbsp;</span>authenticator will handle the form<span>&nbsp;</span><em style="box-sizing: border-box;">submission</em><span>&nbsp;</span>automatically. If the user submits an invalid email or password, that authenticator will store the error and redirect back to this controller, where we read the error (using<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">AuthenticationUtils</code>) 
        so that it can be displayed back to the user.</p>
    <p style="box-sizing: border-box; margin-bottom: var(--margin-md); margin-top: 0px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        Finally, create or update the template:</p>
    <div class="notranslate codeblock codeblock-length-md codeblock-html+twig codeblock-twig" data-loc="23" style="box-sizing: border-box; display: grid; margin-bottom: var(--margin-md); position: relative; margin-left: -30px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" translate="no">
        <button class="btn-codeblock-copy-code" style="box-sizing: border-box; border-radius: 4px; font-family: inherit; font-size: var(--font-size-sm); line-height: 21px; margin: 0px; text-transform: none; appearance: button; cursor: pointer; animation: 0.2s ease 0s 1 normal both running fade-out; background: var(--doc-action-background); border: 1px solid var(--listgroup-border-color); color: var(--text-muted-color); opacity: 0; outline: none; padding: 4px 8px; position: absolute; right: 5px; top: 5px;">
            <svg fill="none" height="21" stroke="currentColor" viewbox="0 0 24 24" width="21" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 5H6a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2v-1M8 5a2 2 0 002 2h2a2 2 0 002-2M8 5a2 2 0 012-2h2a2 2 0 012 2m0 0h2a2 2 0 012 2v3m2 4H10m0 0l3-3m-3 3l3 3"></path>
            </svg>
            <span>&nbsp;</span>Copy
        </button>
        <div class="codeblock-scroll" style="box-sizing: border-box; display: flex; flex-direction: row; overflow-x: auto;">
            <pre class="codeblock-lines" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; display: block; margin-bottom: 0px; margin-top: 0px; overflow: auto; color: var(--doc-codeblock-lines-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre; border-right: 1px solid var(--doc-codeblock-lines-border-color); flex-grow: 0; flex-shrink: 0; padding: 5px 10px 0px 5px; pointer-events: none; text-align: right; user-select: none; line-height: 25.2px;">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23</pre>
            <pre class="codeblock-code" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; display: block; margin-bottom: 0px; margin-top: 0px; overflow: auto; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre; line-height: 1.8; background: var(--doc-codeblock-background); flex: 1 1 0%; hyphens: none; padding: 5px 10px;"><code style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: inherit; font-synthesis: none; font-variant-ligatures: none; white-space: pre; border-bottom: 0px; word-break: unset; background: 0px 0px; border-radius: 0px; padding: 0px;"><span class="hljs-comment" style="box-sizing: border-box; color: rgb(106, 115, 125);">{# templates/login/index.html.twig #}</span><span class="xml" style="box-sizing: border-box;">
</span><span class="hljs-template-tag" style="box-sizing: border-box;">{% <span class="hljs-name" style="box-sizing: border-box;"><span class="hljs-keyword" style="box-sizing: border-box; color: rgb(215, 58, 73);">extends</span></span> &#39;base.html.twig&#39; %}</span><span class="xml" style="box-sizing: border-box;">

</span><span class="hljs-comment" style="box-sizing: border-box; color: rgb(106, 115, 125);">{# ... #}</span><span class="xml" style="box-sizing: border-box;">

</span><span class="hljs-template-tag" style="box-sizing: border-box;">{% <span class="hljs-name" style="box-sizing: border-box;"><span class="hljs-keyword" style="box-sizing: border-box; color: rgb(215, 58, 73);">block</span></span> body %}</span><span class="xml" style="box-sizing: border-box;">
    </span><span class="hljs-template-tag" style="box-sizing: border-box;">{% <span class="hljs-name" style="box-sizing: border-box;"><span class="hljs-keyword" style="box-sizing: border-box; color: rgb(215, 58, 73);">if</span></span> error %}</span><span class="xml" style="box-sizing: border-box;">
        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">div</span>&gt;</span></span><span class="hljs-template-variable" style="box-sizing: border-box;">{{ error.messageKey|trans(error.messageData, &#39;security&#39;) }}</span><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;">&lt;/<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">div</span>&gt;</span>
    </span><span class="hljs-template-tag" style="box-sizing: border-box;">{% <span class="hljs-name" style="box-sizing: border-box;"><span class="hljs-keyword" style="box-sizing: border-box; color: rgb(215, 58, 73);">endif</span></span> %}</span><span class="xml" style="box-sizing: border-box;">

    <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">form</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">action</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;</span></span></span><span class="hljs-template-variable" style="box-sizing: border-box;">{{ path(&#39;login&#39;) }}</span><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">method</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;post&quot;</span>&gt;</span>
        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">label</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">for</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;username&quot;</span>&gt;</span>Email:<span class="hljs-tag" style="box-sizing: border-box;">&lt;/<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">label</span>&gt;</span>
        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">input</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">type</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;text&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">id</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;username&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">name</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;_username&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">value</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;</span></span></span><span class="hljs-template-variable" style="box-sizing: border-box;">{{ last_username }}</span><span class="xml" style="box-sizing: border-box;"><span class="hljs-tag" style="box-sizing: border-box;"><span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;</span>/&gt;</span>

        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">label</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">for</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;password&quot;</span>&gt;</span>Password:<span class="hljs-tag" style="box-sizing: border-box;">&lt;/<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">label</span>&gt;</span>
        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">input</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">type</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;password&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">id</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;password&quot;</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">name</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;_password&quot;</span>/&gt;</span>

        </span><span class="hljs-comment" style="box-sizing: border-box; color: rgb(106, 115, 125);">{# If you want to control the URL the user is redirected to on success
        &lt;input type=&quot;hidden&quot; name=&quot;_target_path&quot; value=&quot;/account&quot;/&gt; #}</span><span class="xml" style="box-sizing: border-box;">

        <span class="hljs-tag" style="box-sizing: border-box;">&lt;<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">button</span> <span class="hljs-attr" style="box-sizing: border-box; color: rgb(111, 66, 193);">type</span>=<span class="hljs-string" style="box-sizing: border-box; color: rgb(3, 47, 98);">&quot;submit&quot;</span>&gt;</span>login<span class="hljs-tag" style="box-sizing: border-box;">&lt;/<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">button</span>&gt;</span>
    <span class="hljs-tag" style="box-sizing: border-box;">&lt;/<span class="hljs-name" style="box-sizing: border-box; color: rgb(34, 134, 58);">form</span>&gt;</span>
</span><span class="hljs-template-tag" style="box-sizing: border-box;">{% <span class="hljs-name" style="box-sizing: border-box;"><span class="hljs-keyword" style="box-sizing: border-box; color: rgb(215, 58, 73);">endblock</span></span> %}</span></code></pre>
        </div>
    </div>
    <div class="admonition admonition-caution " style="box-sizing: border-box; border-color: var(--admonition-caution-border-color); border-top-style: ; border-top-width: ; border-right-style: ; border-right-width: ; border-bottom-style: ; border-bottom-width: ; border-left-style: ; border-left-width: ; border-image-source: ; border-image-slice: ; border-image-width: ; border-image-outset: ; border-image-repeat: ; border-radius: 0.375rem; margin-bottom: var(--margin-md); padding: 12px 12px 12px 64px; position: relative; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        <p class="admonition-title" style="box-sizing: border-box; margin-bottom: 0px; margin-top: 0px; color: var(--admonition-caution-title-color); font-weight: 600;">
            <svg fill="none" height="24" stroke="currentColor" viewbox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
        </p>
        <p style="box-sizing: border-box; margin-bottom: 0px; margin-top: 0px;">
            The<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--admonition-code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">error</code><span>&nbsp;</span>variable passed into the template is an instance of<span>&nbsp;</span><a class="reference external" href="https://github.com/symfony/symfony/blob/6.0/src/Symfony/Component/Security/Core/Exception/AuthenticationException.php" rel="external noopener noreferrer" style="box-sizing: border-box; color: var(--prose-link-color); text-decoration: none; border-bottom: 1px solid var(--link-border-color);" target="_blank" title="Symfony\Component\Security\Core\Exception\AuthenticationException">AuthenticationException</a>. 
            It may contain sensitive information about the authentication failure.<span>&nbsp;</span><em style="box-sizing: border-box;">Never</em><span>&nbsp;</span>use<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--admonition-code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">error.message</code>: use the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--admonition-code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">messageKey</code><span>&nbsp;</span>property 
            instead, as shown in the example. This message is always safe to display.</p>
    </div>
    <p style="box-sizing: border-box; margin-bottom: var(--margin-md); margin-top: 0px; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        The form can look like anything, but it usually follows some conventions:</p>
    <ul style="box-sizing: border-box; padding-left: 0px; margin: 1em 0 var(--margin-md) 1.25em; list-style: outside disc; color: rgb(31, 41, 55); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        <li style="box-sizing: border-box;">The<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">&lt;form&gt;</code><span>&nbsp;</span>element sends a<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">POST</code><span>&nbsp;</span>request 
            to the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">login</code><span>&nbsp;</span>route, since that&#39;s what you configured as the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">check_path</code><span>&nbsp;</span>under 
            the<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">form_login</code><span>&nbsp;</span>key in<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">security.yaml</code>;</li>
        <li style="box-sizing: border-box; margin-top: 0.75em;">The username (or whatever your user&#39;s &quot;identifier&quot; is, like an email) field has the name<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">_username</code><span>&nbsp;</span>and the password field has the name<span>&nbsp;</span><code class="notranslate" style="box-sizing: border-box; direction: ltr; font-family: var(--font-family-monospace); font-size: 14px; unicode-bidi: bidi-override; overflow-wrap: break-word; color: var(--text-color); font-synthesis: none; font-variant-ligatures: none; white-space: pre-wrap; border-bottom: 1px solid var(--doc-code-border-color); background: var(--code-background); border-radius: var(--border-radius-md); padding: 0px 3px; word-break: break-word;" translate="no">_password</code>.</li>
    </ul>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
