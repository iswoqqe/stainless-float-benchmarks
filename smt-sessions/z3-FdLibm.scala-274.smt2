; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1669 () Bool)

(assert start!1669)

(declare-fun b!8465 () Bool)

(declare-fun e!4767 () Bool)

(declare-fun e!4768 () Bool)

(assert (=> b!8465 (= e!4767 e!4768)))

(declare-fun res!6898 () Bool)

(assert (=> b!8465 (=> (not res!6898) (not e!4768))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4347 () (_ BitVec 32))

(assert (=> b!8465 (= res!6898 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4347 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4347) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8465 (= lt!4347 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8466 () Bool)

(declare-fun e!4765 () Bool)

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8466 (= e!4765 (and (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8467 () Bool)

(declare-fun res!6889 () Bool)

(declare-fun e!4763 () Bool)

(assert (=> b!8467 (=> (not res!6889) (not e!4763))))

(declare-datatypes ((array!664 0))(
  ( (array!665 (arr!292 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!292 (_ BitVec 32))) )
))
(declare-fun f!79 () array!664)

(declare-fun fInv!0 (array!664) Bool)

(assert (=> b!8467 (= res!6889 (fInv!0 f!79))))

(declare-fun b!8468 () Bool)

(assert (=> b!8468 (= e!4768 e!4763)))

(declare-fun res!6892 () Bool)

(assert (=> b!8468 (=> (not res!6892) (not e!4763))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8468 (= res!6892 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!625 0))(
  ( (Unit!626) )
))
(declare-datatypes ((tuple3!178 0))(
  ( (tuple3!179 (_1!225 Unit!625) (_2!225 (_ BitVec 32)) (_3!189 array!664)) )
))
(declare-fun lt!4343 () tuple3!178)

(declare-fun e!4766 () tuple3!178)

(assert (=> b!8468 (= lt!4343 e!4766)))

(declare-fun c!995 () Bool)

(declare-fun lt!4345 () (_ BitVec 32))

(declare-fun xx!50 () array!664)

(assert (=> b!8468 (= c!995 (bvsle lt!4345 (bvadd (bvsub (size!292 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8468 (= lt!4345 #b00000000000000000000000000000000)))

(declare-fun lt!4346 () array!664)

(assert (=> b!8468 (= lt!4346 (array!665 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8469 () Bool)

(declare-fun res!6901 () Bool)

(assert (=> b!8469 (=> (not res!6901) (not e!4767))))

(declare-fun xxInv!0 (array!664) Bool)

(assert (=> b!8469 (= res!6901 (xxInv!0 xx!50))))

(declare-fun b!8470 () Bool)

(declare-fun res!6888 () Bool)

(assert (=> b!8470 (=> (not res!6888) (not e!4763))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8470 (= res!6888 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8471 () Bool)

(declare-fun Unit!627 () Unit!625)

(assert (=> b!8471 (= e!4766 (tuple3!179 Unit!627 lt!4345 lt!4346))))

(declare-fun b!8472 () Bool)

(declare-fun res!6891 () Bool)

(assert (=> b!8472 (=> (not res!6891) (not e!4763))))

(declare-fun q!51 () array!664)

(declare-fun qInv!0 (array!664) Bool)

(assert (=> b!8472 (= res!6891 (qInv!0 q!51))))

(declare-fun b!8473 () Bool)

(declare-fun res!6890 () Bool)

(assert (=> b!8473 (=> (not res!6890) (not e!4763))))

(assert (=> b!8473 (= res!6890 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun res!6893 () Bool)

(assert (=> start!1669 (=> (not res!6893) (not e!4767))))

(assert (=> start!1669 (= res!6893 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1669 e!4767))

(declare-fun array_inv!242 (array!664) Bool)

(assert (=> start!1669 (array_inv!242 f!79)))

(assert (=> start!1669 (array_inv!242 q!51)))

(assert (=> start!1669 true))

(assert (=> start!1669 (array_inv!242 xx!50)))

(declare-fun b!8474 () Bool)

(declare-fun res!6899 () Bool)

(assert (=> b!8474 (=> (not res!6899) (not e!4763))))

(assert (=> b!8474 (= res!6899 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8475 () Bool)

(declare-fun res!6902 () Bool)

(assert (=> b!8475 (=> (not res!6902) (not e!4763))))

(assert (=> b!8475 (= res!6902 (Q!0 (select (arr!292 f!79) i!190)))))

(declare-fun b!8476 () Bool)

(declare-fun res!6895 () Bool)

(assert (=> b!8476 (=> (not res!6895) (not e!4763))))

(assert (=> b!8476 (= res!6895 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8477 () Bool)

(declare-fun res!6896 () Bool)

(assert (=> b!8477 (=> (not res!6896) (not e!4763))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8477 (= res!6896 (P!3 (select (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) i!190)))))

(declare-fun b!8478 () Bool)

(declare-fun res!6900 () Bool)

(assert (=> b!8478 (=> (not res!6900) (not e!4763))))

(assert (=> b!8478 (= res!6900 (bvsle i!190 jz!36))))

(declare-fun b!8479 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!664 (_ BitVec 32) array!664) tuple3!178)

(assert (=> b!8479 (= e!4766 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4345 lt!4346))))

(declare-fun b!8480 () Bool)

(declare-fun res!6897 () Bool)

(assert (=> b!8480 (=> (not res!6897) (not e!4765))))

(declare-fun lt!4344 () (_ BitVec 32))

(declare-datatypes ((tuple4!200 0))(
  ( (tuple4!201 (_1!226 Unit!625) (_2!226 (_ BitVec 32)) (_3!190 array!664) (_4!100 array!664)) )
))
(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!664 (_ BitVec 32) array!664 array!664) tuple4!200)

(assert (=> b!8480 (= res!6897 (bvsle #b00000000000000000000000000000000 (_2!226 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4344 (array!665 (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) (size!292 q!51)) f!79))))))

(declare-fun b!8481 () Bool)

(assert (=> b!8481 (= e!4763 e!4765)))

(declare-fun res!6894 () Bool)

(assert (=> b!8481 (=> (not res!6894) (not e!4765))))

(assert (=> b!8481 (= res!6894 (bvsle lt!4344 jz!36))))

(assert (=> b!8481 (= lt!4344 (bvadd i!190 #b00000000000000000000000000000001))))

(assert (= (and start!1669 res!6893) b!8469))

(assert (= (and b!8469 res!6901) b!8465))

(assert (= (and b!8465 res!6898) b!8468))

(assert (= (and b!8468 c!995) b!8479))

(assert (= (and b!8468 (not c!995)) b!8471))

(assert (= (and b!8468 res!6892) b!8467))

(assert (= (and b!8467 res!6889) b!8472))

(assert (= (and b!8472 res!6891) b!8478))

(assert (= (and b!8478 res!6900) b!8473))

(assert (= (and b!8473 res!6890) b!8470))

(assert (= (and b!8470 res!6888) b!8476))

(assert (= (and b!8476 res!6895) b!8474))

(assert (= (and b!8474 res!6899) b!8475))

(assert (= (and b!8475 res!6902) b!8477))

(assert (= (and b!8477 res!6896) b!8481))

(assert (= (and b!8481 res!6894) b!8480))

(assert (= (and b!8480 res!6897) b!8466))

(declare-fun m!12733 () Bool)

(assert (=> b!8473 m!12733))

(assert (=> b!8473 m!12733))

(declare-fun m!12735 () Bool)

(assert (=> b!8473 m!12735))

(declare-fun m!12737 () Bool)

(assert (=> b!8470 m!12737))

(assert (=> b!8470 m!12737))

(declare-fun m!12739 () Bool)

(assert (=> b!8470 m!12739))

(declare-fun m!12741 () Bool)

(assert (=> b!8474 m!12741))

(assert (=> b!8474 m!12741))

(declare-fun m!12743 () Bool)

(assert (=> b!8474 m!12743))

(declare-fun m!12745 () Bool)

(assert (=> b!8476 m!12745))

(assert (=> b!8476 m!12745))

(declare-fun m!12747 () Bool)

(assert (=> b!8476 m!12747))

(declare-fun m!12749 () Bool)

(assert (=> b!8469 m!12749))

(declare-fun m!12751 () Bool)

(assert (=> b!8480 m!12751))

(assert (=> b!8480 m!12733))

(assert (=> b!8480 m!12737))

(assert (=> b!8480 m!12745))

(assert (=> b!8480 m!12741))

(declare-fun m!12753 () Bool)

(assert (=> b!8480 m!12753))

(declare-fun m!12755 () Bool)

(assert (=> b!8480 m!12755))

(declare-fun m!12757 () Bool)

(assert (=> b!8480 m!12757))

(declare-fun m!12759 () Bool)

(assert (=> b!8480 m!12759))

(declare-fun m!12761 () Bool)

(assert (=> b!8480 m!12761))

(declare-fun m!12763 () Bool)

(assert (=> b!8480 m!12763))

(declare-fun m!12765 () Bool)

(assert (=> b!8480 m!12765))

(declare-fun m!12767 () Bool)

(assert (=> b!8479 m!12767))

(declare-fun m!12769 () Bool)

(assert (=> start!1669 m!12769))

(declare-fun m!12771 () Bool)

(assert (=> start!1669 m!12771))

(declare-fun m!12773 () Bool)

(assert (=> start!1669 m!12773))

(declare-fun m!12775 () Bool)

(assert (=> b!8467 m!12775))

(assert (=> b!8475 m!12759))

(assert (=> b!8475 m!12759))

(declare-fun m!12777 () Bool)

(assert (=> b!8475 m!12777))

(declare-fun m!12779 () Bool)

(assert (=> b!8472 m!12779))

(assert (=> b!8477 m!12733))

(assert (=> b!8477 m!12737))

(assert (=> b!8477 m!12745))

(assert (=> b!8477 m!12741))

(assert (=> b!8477 m!12753))

(declare-fun m!12781 () Bool)

(assert (=> b!8477 m!12781))

(assert (=> b!8477 m!12755))

(assert (=> b!8477 m!12757))

(assert (=> b!8477 m!12781))

(declare-fun m!12783 () Bool)

(assert (=> b!8477 m!12783))

(assert (=> b!8477 m!12759))

(assert (=> b!8477 m!12761))

(assert (=> b!8477 m!12763))

(assert (=> b!8477 m!12765))

(check-sat (not b!8475) (not b!8476) (not b!8470) (not b!8467) (not b!8469) (not b!8477) (not b!8474) (not b!8479) (not b!8473) (not start!1669) (not b!8480) (not b!8472))
(check-sat)
