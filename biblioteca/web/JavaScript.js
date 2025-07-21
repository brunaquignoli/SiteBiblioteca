/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function voltar() {
  if (document.referrer) {
    window.history.back();
  } else {
    window.location.href = 'home.jsp';
  }
}
