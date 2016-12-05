package $org_id$

import org.specs2.mutable.Specification

import dispatch.classic._

object ExampleSpec extends Specification with unfiltered.specs2.jetty.Served {
  
  def setup = { _.plan(new App) }
  
  val http = new Http
  
  "The example app" should {
    "serve unfiltered requests" in {
      val status = http x (host as_str) {
        case (code, _, _, _) => code
      }
      status must_== 200
    }
  }
}
