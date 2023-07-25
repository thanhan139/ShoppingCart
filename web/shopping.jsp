<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Shop ban quan ao</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="run.css"/>
    </head>
    <body class="car6">
        <h1 style="color: lightcyan; text-align: center">Welcome to shop quan ao</h1>
        <div>
            <form action="MainController" method="POST">
                <select name="cmbClothes">
                    <option value="C01-T shirt-150">C01-T shirt-150$</option>
                    <option value="C02-Pant-300">C02-Pant-300$</option>
                    <option value="C03-Bubble Dress-400">C03-Bubble Dress-400$</option>
                    <option value="C04-Fashion Hat-200">C04-Fashion Hat-200$</option>
                </select>
                <select name="cmbQuantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="10">10</option>
                </select>
                <input type="submit" name="action" value="Add"/>
                <input type="submit" name="action" value="View"/>
            </form>
        </div>
        ${requestScope.ERROR}
    </body>
</html>
