; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1381 () Bool)

(assert start!1381)

(declare-fun b!6691 () Bool)

(declare-datatypes ((array!567 0))(
  ( (array!568 (arr!251 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!251 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!436 0))(
  ( (Unit!437) )
))
(declare-datatypes ((tuple3!96 0))(
  ( (tuple3!97 (_1!160 Unit!436) (_2!160 (_ BitVec 32)) (_3!147 array!567)) )
))
(declare-fun e!3514 () tuple3!96)

(declare-fun lt!3461 () (_ BitVec 32))

(declare-fun lt!3458 () array!567)

(declare-fun Unit!438 () Unit!436)

(assert (=> b!6691 (= e!3514 (tuple3!97 Unit!438 lt!3461 lt!3458))))

(declare-fun b!6692 () Bool)

(declare-fun res!5484 () Bool)

(declare-fun e!3515 () Bool)

(assert (=> b!6692 (=> (not res!5484) (not e!3515))))

(declare-fun xx!37 () array!567)

(declare-fun xxInv!0 (array!567) Bool)

(assert (=> b!6692 (= res!5484 (xxInv!0 xx!37))))

(declare-fun b!6694 () Bool)

(declare-fun e!3513 () Bool)

(assert (=> b!6694 (= e!3513 false)))

(declare-fun lt!3459 () tuple3!96)

(assert (=> b!6694 (= lt!3459 e!3514)))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun c!810 () Bool)

(assert (=> b!6694 (= c!810 (bvsle lt!3461 (bvadd (bvsub (size!251 xx!37) #b00000000000000000000000000000001) jz!27)))))

(assert (=> b!6694 (= lt!3461 #b00000000000000000000000000000000)))

(assert (=> b!6694 (= lt!3458 (array!568 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun e!10 () (_ BitVec 32))

(declare-fun b!6695 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!567 (_ BitVec 32) array!567) tuple3!96)

(assert (=> b!6695 (= e!3514 (timesTwoOverPiWhile!0 e!10 jz!27 xx!37 lt!3461 lt!3458))))

(declare-fun res!5486 () Bool)

(assert (=> start!1381 (=> (not res!5486) (not e!3515))))

(assert (=> start!1381 (= res!5486 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1381 e!3515))

(assert (=> start!1381 true))

(declare-fun array_inv!201 (array!567) Bool)

(assert (=> start!1381 (array_inv!201 xx!37)))

(declare-fun b!6693 () Bool)

(assert (=> b!6693 (= e!3515 e!3513)))

(declare-fun res!5485 () Bool)

(assert (=> b!6693 (=> (not res!5485) (not e!3513))))

(declare-fun lt!3460 () (_ BitVec 32))

(assert (=> b!6693 (= res!5485 (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3460 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3460) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!6693 (= lt!3460 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1381 res!5486) b!6692))

(assert (= (and b!6692 res!5484) b!6693))

(assert (= (and b!6693 res!5485) b!6694))

(assert (= (and b!6694 c!810) b!6695))

(assert (= (and b!6694 (not c!810)) b!6691))

(declare-fun m!13175 () Bool)

(assert (=> b!6692 m!13175))

(declare-fun m!13177 () Bool)

(assert (=> b!6695 m!13177))

(declare-fun m!13179 () Bool)

(assert (=> start!1381 m!13179))

(push 1)

(assert (not b!6695))

(assert (not b!6692))

(assert (not start!1381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

