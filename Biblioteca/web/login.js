/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener('DOMContentLoaded', function () {
  const toggle = document.getElementById("togBtn");

  toggle.addEventListener("change", function () {
    const currentPage = window.location.pathname;

    if (this.checked && !currentPage.includes("login2.html")) {
      // Espera 800ms antes de trocar de página
      setTimeout(() => {
        window.location.href = "login2.html";
      }, 1000);
    } else if (!this.checked && !currentPage.includes("login1.html")) {
      setTimeout(() => {
        window.location.href = "login1.html";
      }, 1000);
    }
  });
});

