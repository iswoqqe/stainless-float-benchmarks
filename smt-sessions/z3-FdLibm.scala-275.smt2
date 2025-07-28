; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1697 () Bool)

(assert start!1697)

(declare-fun b!8886 () Bool)

(declare-fun res!7280 () Bool)

(declare-fun e!4862 () Bool)

(assert (=> b!8886 (=> (not res!7280) (not e!4862))))

(declare-datatypes ((array!669 0))(
  ( (array!670 (arr!293 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!293 (_ BitVec 32))) )
))
(declare-fun f!79 () array!669)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8886 (= res!7280 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8887 () Bool)

(declare-fun e!4864 () Bool)

(declare-fun e!4866 () Bool)

(assert (=> b!8887 (= e!4864 e!4866)))

(declare-fun res!7288 () Bool)

(assert (=> b!8887 (=> (not res!7288) (not e!4866))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4432 () (_ BitVec 32))

(assert (=> b!8887 (= res!7288 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4432 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4432) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8887 (= lt!4432 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8888 () Bool)

(declare-fun res!7286 () Bool)

(declare-fun e!4861 () Bool)

(assert (=> b!8888 (=> res!7286 e!4861)))

(declare-datatypes ((Unit!643 0))(
  ( (Unit!644) )
))
(declare-datatypes ((tuple4!202 0))(
  ( (tuple4!203 (_1!227 Unit!643) (_2!227 (_ BitVec 32)) (_3!191 array!669) (_4!101 array!669)) )
))
(declare-fun lt!4435 () tuple4!202)

(declare-fun fInv!0 (array!669) Bool)

(assert (=> b!8888 (= res!7286 (not (fInv!0 (_4!101 lt!4435))))))

(declare-fun b!8889 () Bool)

(declare-fun res!7276 () Bool)

(assert (=> b!8889 (=> (not res!7276) (not e!4862))))

(declare-fun q!51 () array!669)

(declare-fun xx!50 () array!669)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8889 (= res!7276 (P!3 (select (store (arr!293 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000000) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000001) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000010) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000011) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000100) (select (arr!293 f!79) i!190)))) i!190)))))

(declare-fun b!8890 () Bool)

(declare-fun res!7287 () Bool)

(assert (=> b!8890 (=> (not res!7287) (not e!4862))))

(assert (=> b!8890 (= res!7287 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8891 () Bool)

(declare-fun res!7277 () Bool)

(assert (=> b!8891 (=> (not res!7277) (not e!4864))))

(declare-fun xxInv!0 (array!669) Bool)

(assert (=> b!8891 (= res!7277 (xxInv!0 xx!50))))

(declare-fun res!7274 () Bool)

(assert (=> start!1697 (=> (not res!7274) (not e!4864))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1697 (= res!7274 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1697 e!4864))

(declare-fun array_inv!243 (array!669) Bool)

(assert (=> start!1697 (array_inv!243 f!79)))

(assert (=> start!1697 (array_inv!243 q!51)))

(assert (=> start!1697 true))

(assert (=> start!1697 (array_inv!243 xx!50)))

(declare-fun b!8892 () Bool)

(declare-datatypes ((tuple3!180 0))(
  ( (tuple3!181 (_1!228 Unit!643) (_2!228 (_ BitVec 32)) (_3!192 array!669)) )
))
(declare-fun e!4865 () tuple3!180)

(declare-fun lt!4437 () (_ BitVec 32))

(declare-fun lt!4436 () array!669)

(declare-fun Unit!645 () Unit!643)

(assert (=> b!8892 (= e!4865 (tuple3!181 Unit!645 lt!4437 lt!4436))))

(declare-fun b!8893 () Bool)

(assert (=> b!8893 (= e!4866 e!4862)))

(declare-fun res!7273 () Bool)

(assert (=> b!8893 (=> (not res!7273) (not e!4862))))

(assert (=> b!8893 (= res!7273 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4433 () tuple3!180)

(assert (=> b!8893 (= lt!4433 e!4865)))

(declare-fun c!1013 () Bool)

(assert (=> b!8893 (= c!1013 (bvsle lt!4437 (bvadd (bvsub (size!293 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8893 (= lt!4437 #b00000000000000000000000000000000)))

(assert (=> b!8893 (= lt!4436 (array!670 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8894 () Bool)

(declare-fun res!7281 () Bool)

(assert (=> b!8894 (=> (not res!7281) (not e!4862))))

(declare-fun qInv!0 (array!669) Bool)

(assert (=> b!8894 (= res!7281 (qInv!0 q!51))))

(declare-fun b!8895 () Bool)

(declare-fun e!4868 () Bool)

(assert (=> b!8895 (= e!4862 e!4868)))

(declare-fun res!7275 () Bool)

(assert (=> b!8895 (=> (not res!7275) (not e!4868))))

(declare-fun lt!4434 () (_ BitVec 32))

(assert (=> b!8895 (= res!7275 (bvsle lt!4434 jz!36))))

(assert (=> b!8895 (= lt!4434 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8896 () Bool)

(declare-fun res!7278 () Bool)

(assert (=> b!8896 (=> (not res!7278) (not e!4862))))

(assert (=> b!8896 (= res!7278 (bvsle i!190 jz!36))))

(declare-fun b!8897 () Bool)

(assert (=> b!8897 (= e!4868 e!4861)))

(declare-fun res!7284 () Bool)

(assert (=> b!8897 (=> res!7284 e!4861)))

(assert (=> b!8897 (= res!7284 (or (bvsgt #b00000000000000000000000000000000 (_2!227 lt!4435)) (bvsgt (_2!227 lt!4435) (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!669 (_ BitVec 32) array!669 array!669) tuple4!202)

(assert (=> b!8897 (= lt!4435 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4434 (array!670 (store (arr!293 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000000) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000001) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000010) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000011) (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!293 xx!50) #b00000000000000000000000000000100) (select (arr!293 f!79) i!190)))) (size!293 q!51)) f!79))))

(declare-fun b!8898 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!669 (_ BitVec 32) array!669) tuple3!180)

(assert (=> b!8898 (= e!4865 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4437 lt!4436))))

(declare-fun b!8899 () Bool)

(declare-fun res!7285 () Bool)

(assert (=> b!8899 (=> (not res!7285) (not e!4862))))

(assert (=> b!8899 (= res!7285 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8900 () Bool)

(declare-fun res!7282 () Bool)

(assert (=> b!8900 (=> (not res!7282) (not e!4862))))

(assert (=> b!8900 (= res!7282 (fInv!0 f!79))))

(declare-fun b!8901 () Bool)

(declare-fun res!7283 () Bool)

(assert (=> b!8901 (=> (not res!7283) (not e!4862))))

(assert (=> b!8901 (= res!7283 (Q!0 (select (arr!293 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8902 () Bool)

(declare-fun res!7279 () Bool)

(assert (=> b!8902 (=> (not res!7279) (not e!4862))))

(assert (=> b!8902 (= res!7279 (Q!0 (select (arr!293 f!79) i!190)))))

(declare-fun b!8903 () Bool)

(assert (=> b!8903 (= e!4861 (not (qInv!0 (_3!191 lt!4435))))))

(assert (= (and start!1697 res!7274) b!8891))

(assert (= (and b!8891 res!7277) b!8887))

(assert (= (and b!8887 res!7288) b!8893))

(assert (= (and b!8893 c!1013) b!8898))

(assert (= (and b!8893 (not c!1013)) b!8892))

(assert (= (and b!8893 res!7273) b!8900))

(assert (= (and b!8900 res!7282) b!8894))

(assert (= (and b!8894 res!7281) b!8896))

(assert (= (and b!8896 res!7278) b!8890))

(assert (= (and b!8890 res!7287) b!8899))

(assert (= (and b!8899 res!7285) b!8886))

(assert (= (and b!8886 res!7280) b!8901))

(assert (= (and b!8901 res!7283) b!8902))

(assert (= (and b!8902 res!7279) b!8889))

(assert (= (and b!8889 res!7276) b!8895))

(assert (= (and b!8895 res!7275) b!8897))

(assert (= (and b!8897 (not res!7284)) b!8888))

(assert (= (and b!8888 (not res!7286)) b!8903))

(declare-fun m!14609 () Bool)

(assert (=> b!8888 m!14609))

(declare-fun m!14611 () Bool)

(assert (=> b!8897 m!14611))

(declare-fun m!14613 () Bool)

(assert (=> b!8897 m!14613))

(declare-fun m!14615 () Bool)

(assert (=> b!8897 m!14615))

(declare-fun m!14617 () Bool)

(assert (=> b!8897 m!14617))

(declare-fun m!14619 () Bool)

(assert (=> b!8897 m!14619))

(declare-fun m!14621 () Bool)

(assert (=> b!8897 m!14621))

(declare-fun m!14623 () Bool)

(assert (=> b!8897 m!14623))

(declare-fun m!14625 () Bool)

(assert (=> b!8897 m!14625))

(declare-fun m!14627 () Bool)

(assert (=> b!8897 m!14627))

(declare-fun m!14629 () Bool)

(assert (=> b!8897 m!14629))

(declare-fun m!14631 () Bool)

(assert (=> b!8897 m!14631))

(declare-fun m!14633 () Bool)

(assert (=> b!8897 m!14633))

(assert (=> b!8899 m!14613))

(assert (=> b!8899 m!14613))

(declare-fun m!14635 () Bool)

(assert (=> b!8899 m!14635))

(declare-fun m!14637 () Bool)

(assert (=> b!8903 m!14637))

(assert (=> b!8886 m!14617))

(assert (=> b!8886 m!14617))

(declare-fun m!14639 () Bool)

(assert (=> b!8886 m!14639))

(assert (=> b!8890 m!14611))

(assert (=> b!8890 m!14611))

(declare-fun m!14641 () Bool)

(assert (=> b!8890 m!14641))

(assert (=> b!8902 m!14627))

(assert (=> b!8902 m!14627))

(declare-fun m!14643 () Bool)

(assert (=> b!8902 m!14643))

(declare-fun m!14645 () Bool)

(assert (=> b!8898 m!14645))

(declare-fun m!14647 () Bool)

(assert (=> b!8891 m!14647))

(declare-fun m!14649 () Bool)

(assert (=> start!1697 m!14649))

(declare-fun m!14651 () Bool)

(assert (=> start!1697 m!14651))

(declare-fun m!14653 () Bool)

(assert (=> start!1697 m!14653))

(declare-fun m!14655 () Bool)

(assert (=> b!8900 m!14655))

(assert (=> b!8901 m!14619))

(assert (=> b!8901 m!14619))

(declare-fun m!14657 () Bool)

(assert (=> b!8901 m!14657))

(assert (=> b!8889 m!14611))

(assert (=> b!8889 m!14613))

(assert (=> b!8889 m!14615))

(assert (=> b!8889 m!14619))

(assert (=> b!8889 m!14621))

(assert (=> b!8889 m!14623))

(assert (=> b!8889 m!14629))

(assert (=> b!8889 m!14617))

(declare-fun m!14659 () Bool)

(assert (=> b!8889 m!14659))

(assert (=> b!8889 m!14631))

(assert (=> b!8889 m!14633))

(assert (=> b!8889 m!14627))

(assert (=> b!8889 m!14659))

(declare-fun m!14661 () Bool)

(assert (=> b!8889 m!14661))

(declare-fun m!14663 () Bool)

(assert (=> b!8894 m!14663))

(check-sat (not b!8899) (not b!8900) (not b!8888) (not b!8889) (not b!8901) (not b!8890) (not b!8891) (not b!8898) (not b!8897) (not b!8886) (not b!8894) (not b!8903) (not b!8902) (not start!1697))
(check-sat)
