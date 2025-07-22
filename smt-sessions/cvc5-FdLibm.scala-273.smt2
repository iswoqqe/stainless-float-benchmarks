; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1767 () Bool)

(assert start!1767)

(declare-fun res!7711 () Bool)

(declare-fun e!4946 () Bool)

(assert (=> start!1767 (=> (not res!7711) (not e!4946))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1767 (= res!7711 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1767 e!4946))

(declare-datatypes ((array!672 0))(
  ( (array!673 (arr!291 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!291 (_ BitVec 32))) )
))
(declare-fun f!79 () array!672)

(declare-fun array_inv!241 (array!672) Bool)

(assert (=> start!1767 (array_inv!241 f!79)))

(declare-fun q!51 () array!672)

(assert (=> start!1767 (array_inv!241 q!51)))

(assert (=> start!1767 true))

(declare-fun xx!50 () array!672)

(assert (=> start!1767 (array_inv!241 xx!50)))

(declare-fun b!9353 () Bool)

(declare-datatypes ((Unit!666 0))(
  ( (Unit!667) )
))
(declare-datatypes ((tuple3!176 0))(
  ( (tuple3!177 (_1!226 Unit!666) (_2!226 (_ BitVec 32)) (_3!188 array!672)) )
))
(declare-fun e!4949 () tuple3!176)

(declare-fun lt!4525 () (_ BitVec 32))

(declare-fun lt!4519 () array!672)

(declare-fun Unit!668 () Unit!666)

(assert (=> b!9353 (= e!4949 (tuple3!177 Unit!668 lt!4525 lt!4519))))

(declare-fun b!9354 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!672 (_ BitVec 32) array!672) tuple3!176)

(assert (=> b!9354 (= e!4949 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4525 lt!4519))))

(declare-fun b!9355 () Bool)

(declare-fun res!7707 () Bool)

(declare-fun e!4947 () Bool)

(assert (=> b!9355 (=> (not res!7707) (not e!4947))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9355 (= res!7707 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9356 () Bool)

(declare-fun e!4951 () Bool)

(assert (=> b!9356 (= e!4947 e!4951)))

(declare-fun res!7713 () Bool)

(assert (=> b!9356 (=> (not res!7713) (not e!4951))))

(declare-fun lt!4522 () (_ BitVec 32))

(assert (=> b!9356 (= res!7713 (bvsle lt!4522 jz!36))))

(assert (=> b!9356 (= lt!4522 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9357 () Bool)

(assert (=> b!9357 (= e!4951 (bvsge (bvsub (bvadd jz!36 #b00000000000000000000000000000001) lt!4522) (bvsub (bvadd jz!36 #b00000000000000000000000000000001) i!190)))))

(declare-fun lt!4521 () tuple3!176)

(declare-fun e!4952 () tuple3!176)

(assert (=> b!9357 (= lt!4521 e!4952)))

(declare-fun lt!4520 () (_ BitVec 32))

(declare-fun c!1033 () Bool)

(assert (=> b!9357 (= c!1033 (bvsle lt!4520 (bvadd (bvsub (size!291 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9357 (= lt!4520 #b00000000000000000000000000000000)))

(declare-fun lt!4523 () array!672)

(assert (=> b!9357 (= lt!4523 (array!673 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9358 () Bool)

(declare-fun res!7703 () Bool)

(assert (=> b!9358 (=> (not res!7703) (not e!4947))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9358 (= res!7703 (P!3 (select (store (arr!291 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000000) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000001) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000010) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000011) (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!291 xx!50) #b00000000000000000000000000000100) (select (arr!291 f!79) i!190)))) i!190)))))

(declare-fun b!9359 () Bool)

(declare-fun res!7710 () Bool)

(assert (=> b!9359 (=> (not res!7710) (not e!4946))))

(declare-fun xxInv!0 (array!672) Bool)

(assert (=> b!9359 (= res!7710 (xxInv!0 xx!50))))

(declare-fun b!9360 () Bool)

(assert (=> b!9360 (= e!4952 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4520 lt!4523))))

(declare-fun b!9361 () Bool)

(declare-fun res!7712 () Bool)

(assert (=> b!9361 (=> (not res!7712) (not e!4947))))

(assert (=> b!9361 (= res!7712 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9362 () Bool)

(declare-fun res!7714 () Bool)

(assert (=> b!9362 (=> (not res!7714) (not e!4947))))

(assert (=> b!9362 (= res!7714 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9363 () Bool)

(declare-fun res!7708 () Bool)

(assert (=> b!9363 (=> (not res!7708) (not e!4947))))

(declare-fun qInv!0 (array!672) Bool)

(assert (=> b!9363 (= res!7708 (qInv!0 q!51))))

(declare-fun b!9364 () Bool)

(declare-fun res!7704 () Bool)

(assert (=> b!9364 (=> (not res!7704) (not e!4947))))

(assert (=> b!9364 (= res!7704 (Q!0 (select (arr!291 f!79) i!190)))))

(declare-fun b!9365 () Bool)

(declare-fun res!7715 () Bool)

(assert (=> b!9365 (=> (not res!7715) (not e!4947))))

(assert (=> b!9365 (= res!7715 (bvsle i!190 jz!36))))

(declare-fun b!9366 () Bool)

(declare-fun e!4948 () Bool)

(assert (=> b!9366 (= e!4948 e!4947)))

(declare-fun res!7706 () Bool)

(assert (=> b!9366 (=> (not res!7706) (not e!4947))))

(assert (=> b!9366 (= res!7706 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4524 () tuple3!176)

(assert (=> b!9366 (= lt!4524 e!4949)))

(declare-fun c!1032 () Bool)

(assert (=> b!9366 (= c!1032 (bvsle lt!4525 (bvadd (bvsub (size!291 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9366 (= lt!4525 #b00000000000000000000000000000000)))

(assert (=> b!9366 (= lt!4519 (array!673 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9367 () Bool)

(declare-fun Unit!669 () Unit!666)

(assert (=> b!9367 (= e!4952 (tuple3!177 Unit!669 lt!4520 lt!4523))))

(declare-fun b!9368 () Bool)

(assert (=> b!9368 (= e!4946 e!4948)))

(declare-fun res!7709 () Bool)

(assert (=> b!9368 (=> (not res!7709) (not e!4948))))

(declare-fun lt!4526 () (_ BitVec 32))

(assert (=> b!9368 (= res!7709 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4526 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4526) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9368 (= lt!4526 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9369 () Bool)

(declare-fun res!7705 () Bool)

(assert (=> b!9369 (=> (not res!7705) (not e!4947))))

(declare-fun fInv!0 (array!672) Bool)

(assert (=> b!9369 (= res!7705 (fInv!0 f!79))))

(declare-fun b!9370 () Bool)

(declare-fun res!7702 () Bool)

(assert (=> b!9370 (=> (not res!7702) (not e!4947))))

(assert (=> b!9370 (= res!7702 (Q!0 (select (arr!291 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(assert (= (and start!1767 res!7711) b!9359))

(assert (= (and b!9359 res!7710) b!9368))

(assert (= (and b!9368 res!7709) b!9366))

(assert (= (and b!9366 c!1032) b!9354))

(assert (= (and b!9366 (not c!1032)) b!9353))

(assert (= (and b!9366 res!7706) b!9369))

(assert (= (and b!9369 res!7705) b!9363))

(assert (= (and b!9363 res!7708) b!9365))

(assert (= (and b!9365 res!7715) b!9361))

(assert (= (and b!9361 res!7712) b!9362))

(assert (= (and b!9362 res!7714) b!9355))

(assert (= (and b!9355 res!7707) b!9370))

(assert (= (and b!9370 res!7702) b!9364))

(assert (= (and b!9364 res!7704) b!9358))

(assert (= (and b!9358 res!7703) b!9356))

(assert (= (and b!9356 res!7713) b!9357))

(assert (= (and b!9357 c!1033) b!9360))

(assert (= (and b!9357 (not c!1033)) b!9367))

(declare-fun m!16809 () Bool)

(assert (=> b!9358 m!16809))

(declare-fun m!16811 () Bool)

(assert (=> b!9358 m!16811))

(declare-fun m!16813 () Bool)

(assert (=> b!9358 m!16813))

(declare-fun m!16815 () Bool)

(assert (=> b!9358 m!16815))

(declare-fun m!16817 () Bool)

(assert (=> b!9358 m!16817))

(declare-fun m!16819 () Bool)

(assert (=> b!9358 m!16819))

(declare-fun m!16821 () Bool)

(assert (=> b!9358 m!16821))

(declare-fun m!16823 () Bool)

(assert (=> b!9358 m!16823))

(assert (=> b!9358 m!16809))

(declare-fun m!16825 () Bool)

(assert (=> b!9358 m!16825))

(declare-fun m!16827 () Bool)

(assert (=> b!9358 m!16827))

(declare-fun m!16829 () Bool)

(assert (=> b!9358 m!16829))

(declare-fun m!16831 () Bool)

(assert (=> b!9358 m!16831))

(declare-fun m!16833 () Bool)

(assert (=> b!9358 m!16833))

(declare-fun m!16835 () Bool)

(assert (=> b!9363 m!16835))

(assert (=> b!9361 m!16813))

(assert (=> b!9361 m!16813))

(declare-fun m!16837 () Bool)

(assert (=> b!9361 m!16837))

(assert (=> b!9370 m!16819))

(assert (=> b!9370 m!16819))

(declare-fun m!16839 () Bool)

(assert (=> b!9370 m!16839))

(declare-fun m!16841 () Bool)

(assert (=> start!1767 m!16841))

(declare-fun m!16843 () Bool)

(assert (=> start!1767 m!16843))

(declare-fun m!16845 () Bool)

(assert (=> start!1767 m!16845))

(declare-fun m!16847 () Bool)

(assert (=> b!9369 m!16847))

(assert (=> b!9362 m!16815))

(assert (=> b!9362 m!16815))

(declare-fun m!16849 () Bool)

(assert (=> b!9362 m!16849))

(declare-fun m!16851 () Bool)

(assert (=> b!9359 m!16851))

(assert (=> b!9355 m!16817))

(assert (=> b!9355 m!16817))

(declare-fun m!16853 () Bool)

(assert (=> b!9355 m!16853))

(assert (=> b!9364 m!16827))

(assert (=> b!9364 m!16827))

(declare-fun m!16855 () Bool)

(assert (=> b!9364 m!16855))

(declare-fun m!16857 () Bool)

(assert (=> b!9354 m!16857))

(declare-fun m!16859 () Bool)

(assert (=> b!9360 m!16859))

(push 1)

(assert (not b!9363))

(assert (not b!9359))

(assert (not b!9361))

(assert (not b!9360))

(assert (not b!9358))

(assert (not b!9370))

(assert (not b!9355))

(assert (not b!9364))

(assert (not b!9362))

(assert (not b!9369))

(assert (not start!1767))

(assert (not b!9354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

