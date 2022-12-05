import '../styles/Navbar-Right-Links-Dark.module.css'
import '../styles/Mitr.module.css'
import "bootstrap/dist/css/bootstrap.min.css";
import { useEffect } from "react";


export default function nav() {
    useEffect(() => {
        require("bootstrap/dist/js/bootstrap.bundle.min.js");
      }, []);
    return (<>
      <nav className="navbar navbar-dark navbar-expand-md bg-dark py-3">
    <div className="container">
      <a className="navbar-brand d-flex align-items-center" href="#">
        <span
          className="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon"
          style={{ background: "rgba(255,255,255,0)" }}
        ></span>
      </a>
      <a href="https://lightcc.tk">
        <img src="https://lightcc.tk/assets/img/lightbgbw.png" style={{ width: 64, height: 64 }} />
      </a>
      <button
        data-bs-toggle="collapse"
        className="navbar-toggler"
        data-bs-target="#navcol-5"
      >
        <span className="visually-hidden">Toggle navigation</span>
        <span className="navbar-toggler-icon"></span>
      </button>
      <div className="collapse navbar-collapse" id="navcol-5">
        <ul className="navbar-nav ms-auto">
          <li className="nav-item dropdown">
            <a
              className="dropdown-toggle nav-link"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              href="#"
            >
              สถิติ
            </a>
            <div
              className="dropdown-menu"
              style={{
                width: 128,
                minWidth: 128,
                background: "rgba(20,20,20,0.7)"
              }}
            >
              <a
                className="dropdown-item"
                href="#"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                รางวัล
              </a>
              <a
                className="dropdown-item"
                href="#"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                กระดานอันดับ
              </a>
              <a
                className="dropdown-item"
                href="#"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                รายชื่อผู้เล่น
              </a>
            </div>
          </li>
          <li className="nav-item dropdown">
            <a
              className="dropdown-toggle nav-link"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              href="#"
            >
              สารานุกรม
            </a>
            <div
              className="dropdown-menu"
              style={{
                width: 128,
                minWidth: 128,
                background: "rgba(20,20,20,0.7)"
              }}
            >
              <a
                className="dropdown-item"
                href="https://lightcc.tk/rule"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                กฏเซิร์ฟเอวร์
              </a>
              <a
                className="dropdown-item"
                href="https://lightcc.tk/addon"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                ส่วนเสริม
              </a>
              <a
                className="dropdown-item"
                href="https://lightcc.tk/priceindex"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                ราคามาตรฐาน
              </a>
              <a
                className="dropdown-item"
                href="https://lightcc.tk/shoptheme"
                style={{ width: 128, color: "rgb(217,217,217)" }}
              >
                สร้างร้านค้า
              </a>
            </div>
          </li>
          <li className="nav-item dropdown">
            <a
              className="dropdown-toggle nav-link"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              href="#"
            >
              แผนที่&nbsp;
            </a>
            <div
              className="dropdown-menu"
              style={{
                width: 107,
                minWidth: 103,
                background: "rgba(20,20,20,0.7)"
              }}
            >
              <a
                className="dropdown-item"
                href="https://lightcc.tk/map"
                style={{ width: 105, color: "rgb(217,217,217)" }}
              >
                เอาชีวิตรอด
              </a>
              <a
                className="dropdown-item"
                href="https://lightcc.tk/map/creative"
                style={{ width: 105, color: "rgb(217,217,217)" }}
              >
                สร้างสรรค์
              </a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</>)
}