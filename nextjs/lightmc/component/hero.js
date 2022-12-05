import '../styles/styles.module.css'
import '../styles/Mitr.module.css'
import "bootstrap/dist/css/bootstrap.min.css";

export default function hero() {
    return (<>
   <section
  className="py-4 py-xl-5"
  style={{
    height: 500,
    width: "100%",
    background:
      'linear-gradient(rgba(20,20,20,0.7), rgba(20,20,20,0.7)), url("https://lightcc.tk/assets/img/huge_2022-11-27_21.33.17.png") center / cover no-repeat, rgb(20,20,20)'
  }}
>
  <div className="container h-100">
    <div className="row h-100" style={{ filter: "blur(0px)" }}>
      <div className="col-md-10 col-xl-8 text-center d-flex d-sm-flex d-md-flex justify-content-center align-items-center mx-auto justify-content-md-start align-items-md-center justify-content-xl-center">
        <div>
          <h2
            className="text-uppercase fw-bold mb-3"
            style={{ color: "rgb(255,255,255)" }}
          >
            LIGHT MINECRAFT
          </h2>
          <p className="mb-4" style={{ color: "rgb(201,201,201)" }}>
            เซิร์ฟเวอร์ Minecraft ในไทยที่เน้นการเล่นแบบ SMP
            และเปิดอิสระให้ความคิด&nbsp;
            <span
              style={{
                color: "rgb(68, 68, 68)",
                backgroundColor: "rgb(255, 255, 255)"
              }}
            >
              &nbsp;สร้างสรรค์&nbsp;
            </span>{" "}
            ของผู้เล่นโลดแล่นในเซิร์ฟเวอร์ด้วยไม่มีใครเหนือใคร
            ไม่มีผู้ดูแลหรือที่เรียกว่า Admin แล้วคุณจะรออะไรถ้าสนก็
            กระโดดเข้ามาเลย
          </p>
          <a
            className="btn btn-primary fs-5 me-2 py-2 px-4"
            role="button"
            href="https://discord.gg/zNWhFjfvnT"
          >
            ดิสคอร์ด
          </a>
          <a
            className="btn btn-outline-primary fs-5 py-2 px-4"
            role="button"
            href="https://lightcc.tk/howtojoin"
          >
            เข้ายังไง ?
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

   </>)
}