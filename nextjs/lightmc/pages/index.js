import Mycustomnav from '../component/laikanavbar.js'
import MyHeader from '../component/head.js'
import MyHero from '../component/hero.js'
import Myfooter from '../component/footer.js'

export default function randompage() {
    return (
      <>
      <style jsx global>{`
  body {
    background-color:rgba(33,37,41,255);
  }
`}</style>
      <MyHeader/>
    <Mycustomnav/>
    <MyHero/>
    <Myfooter/>
    </>)
}