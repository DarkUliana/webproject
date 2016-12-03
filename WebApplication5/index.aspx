<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
        <meta name="viewport" content="width=device-width" />
    <title>Index</title>
    <link rel="stylesheet" href="Content/1.css"/>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    

</head>
<body class="ground">
    <script>
var elements = document.getElementsByClassName("addphoto");
for(var i=0; i<elements.length; ++i)
{
	var width = elements[i].style.width;
	elements[i].SetAttribute('height', width);
}
    </script>

    <div class="groundtop">
        <div class="topcontainer">
            <div class="row inner">
                <div class="col-xs-6" style="height:100px;">
                    <div class="text25">SMARTHOUSE</div>
                </div>
                
                <div class="col-xs-6" style="height:100px;">
                    <
                    <div class="text12">Вхід</div>
                    <div class="text12">Реєстрація</div>
               
                    
                </div>
            </div>


        </div>
    </div>

    <div class="groundmiddle">
        <div class="maincontainer">

            <div class="content">

                <div class="row">
                    <div class="col-xs-6">
                        <img src="Content/11.jpg" class="img-responsive" alt="img3" />
                        <div class="text18">
                            розумний дім
                        </div>
                        <div class="text13">
                            Ми пропонуємо передову технологію, яка допоможе вам контролювати роботу ваших електроприладів з будь-якої точки планети.
                        </div>
                        <a href="index.html">
                            <div class="buttons">
                                <div class="Details">
                                    Деталі
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-6">
                        <img src="Content/5.jpg" class="img-responsive" alt="img4" />
                        <div class="text18">
                            контроль витрат
                        </div>
                        <div class="text13">
                            Графіки використання електроенергії дозволять вам економити ваші кошти. Також ви зможете створити власний графік роботи ваших електроприладів для оптимізації витрат та поліпшення умов вашого життя.
                        </div>
                        <a href="index.html">
                            <div class="buttons">
                                <div class="Details">
                                    Деталі
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="line"></div>

                <div class="row">
                    <div class="col-xs-4"><img class="img-responsive" src="Content/1108565376.jpg" alt="" /></div>
                    <div class="col-xs-4"><img class="img-responsive" src="Content/12776282-male-hand-push-on-pc-touch-screen-interface.jpg" alt="" /></div>
                    <div class="col-xs-4"><img class="img-responsive" src="Content/uslugi-elektrika-2.jpg" alt="" /></div>
                </div>
                <div class="line"></div>
                <div class="text18">Blog Post Title One</div>
                <div class="text13">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis lectus at arcu egestas fringilla fermentum eget ipsum. Vestibulum hendrerit dignissim nunc vel volutpat. Nulla facilisi.
                </div>
                <a href="index.html">
                    <div class="buttons">
                        <div class="Details">
                            Details
                        </div>
                    </div>
                </a>
                <div class="line"></div>
                <div class="text18">Blog Post Title Two</div>
                <div class="text13">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis lectus at arcu egestas fringilla fermentum eget ipsum. Vestibulum hendrerit dignissim nunc vel volutpat. Nulla facilisi.
                </div>
                <a href="index.html">
                    <div class="buttons">
                        <div class="Details">
                            Details
                        </div>
                    </div>
                </a>

            </div>

        </div>
    </div>
    <div class="groundbottom">
        
        <div class="footerout">
            <div class="footer">
                <div class="footerleft">
                    <div class="footertext">
                        Не відмовляйте собі у можливості керувати своїм життям!
                    </div>

                </div>
                <div class="footerright">
                    <ul>
                        <li><a href="index.html">Quick Link One</a></li>
                        <li><a href="index.html">Quick Link Two</a></li>
                        <li><a href="index.html">Quick Link Three</a></li>
                        <li><a href="index.html">Quick Link Four</a></li>
                    </ul>
                </div>

                <div class="line footerline"></div>

                <div class="footerleft copyright" style="width:72%">Copyright 2015 <span style="color:#E7B060"><a href="https://vk.com/uliana_riznyk">RiznykUliana.</a></span> All Rights Reserved.</div>
            </div>
        </div>

    </div>





</body>
</html>
