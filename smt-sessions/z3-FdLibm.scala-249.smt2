; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1465 () Bool)

(assert start!1465)

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun b!7618 () Bool)

(declare-datatypes ((array!600 0))(
  ( (array!601 (arr!267 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!267 (_ BitVec 32))) )
))
(declare-fun lt!3787 () array!600)

(declare-fun xx!50 () array!600)

(declare-fun lt!3789 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(declare-datatypes ((Unit!513 0))(
  ( (Unit!514) )
))
(declare-datatypes ((tuple3!128 0))(
  ( (tuple3!129 (_1!183 Unit!513) (_2!183 (_ BitVec 32)) (_3!164 array!600)) )
))
(declare-fun e!3980 () tuple3!128)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!600 (_ BitVec 32) array!600) tuple3!128)

(assert (=> b!7618 (= e!3980 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3789 lt!3787))))

(declare-fun b!7619 () Bool)

(declare-fun e!3984 () Bool)

(declare-fun e!3982 () Bool)

(assert (=> b!7619 (= e!3984 e!3982)))

(declare-fun res!6274 () Bool)

(assert (=> b!7619 (=> (not res!6274) (not e!3982))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7619 (= res!6274 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3786 () tuple3!128)

(assert (=> b!7619 (= lt!3786 e!3980)))

(declare-fun c!881 () Bool)

(assert (=> b!7619 (= c!881 (bvsle lt!3789 (bvadd (bvsub (size!267 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7619 (= lt!3789 #b00000000000000000000000000000000)))

(assert (=> b!7619 (= lt!3787 (array!601 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7620 () Bool)

(declare-fun res!6273 () Bool)

(assert (=> b!7620 (=> (not res!6273) (not e!3982))))

(declare-fun f!79 () array!600)

(declare-fun fInv!0 (array!600) Bool)

(assert (=> b!7620 (= res!6273 (fInv!0 f!79))))

(declare-fun b!7621 () Bool)

(declare-fun e!3979 () Bool)

(assert (=> b!7621 (= e!3979 e!3984)))

(declare-fun res!6272 () Bool)

(assert (=> b!7621 (=> (not res!6272) (not e!3984))))

(declare-fun lt!3788 () (_ BitVec 32))

(assert (=> b!7621 (= res!6272 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3788 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3788) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7621 (= lt!3788 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7622 () Bool)

(declare-fun Unit!515 () Unit!513)

(assert (=> b!7622 (= e!3980 (tuple3!129 Unit!515 lt!3789 lt!3787))))

(declare-fun res!6270 () Bool)

(assert (=> start!1465 (=> (not res!6270) (not e!3979))))

(assert (=> start!1465 (= res!6270 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1465 e!3979))

(declare-fun array_inv!217 (array!600) Bool)

(assert (=> start!1465 (array_inv!217 f!79)))

(declare-fun q!51 () array!600)

(assert (=> start!1465 (array_inv!217 q!51)))

(assert (=> start!1465 true))

(assert (=> start!1465 (array_inv!217 xx!50)))

(declare-fun b!7623 () Bool)

(declare-fun res!6271 () Bool)

(assert (=> b!7623 (=> (not res!6271) (not e!3979))))

(declare-fun xxInv!0 (array!600) Bool)

(assert (=> b!7623 (= res!6271 (xxInv!0 xx!50))))

(declare-fun b!7624 () Bool)

(declare-fun res!6269 () Bool)

(assert (=> b!7624 (=> (not res!6269) (not e!3982))))

(declare-fun qInv!0 (array!600) Bool)

(assert (=> b!7624 (= res!6269 (qInv!0 q!51))))

(declare-fun b!7625 () Bool)

(assert (=> b!7625 (= e!3982 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(assert (= (and start!1465 res!6270) b!7623))

(assert (= (and b!7623 res!6271) b!7621))

(assert (= (and b!7621 res!6272) b!7619))

(assert (= (and b!7619 c!881) b!7618))

(assert (= (and b!7619 (not c!881)) b!7622))

(assert (= (and b!7619 res!6274) b!7620))

(assert (= (and b!7620 res!6273) b!7624))

(assert (= (and b!7624 res!6269) b!7625))

(declare-fun m!13777 () Bool)

(assert (=> b!7623 m!13777))

(declare-fun m!13779 () Bool)

(assert (=> b!7618 m!13779))

(declare-fun m!13781 () Bool)

(assert (=> start!1465 m!13781))

(declare-fun m!13783 () Bool)

(assert (=> start!1465 m!13783))

(declare-fun m!13785 () Bool)

(assert (=> start!1465 m!13785))

(declare-fun m!13787 () Bool)

(assert (=> b!7620 m!13787))

(declare-fun m!13789 () Bool)

(assert (=> b!7624 m!13789))

(check-sat (not b!7623) (not b!7624) (not b!7620) (not b!7618) (not start!1465))
(check-sat)
