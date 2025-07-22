; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1675 () Bool)

(assert start!1675)

(declare-fun b!8614 () Bool)

(declare-fun e!4842 () Bool)

(declare-fun e!4838 () Bool)

(assert (=> b!8614 (= e!4842 e!4838)))

(declare-fun res!7020 () Bool)

(assert (=> b!8614 (=> (not res!7020) (not e!4838))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8614 (= res!7020 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((array!670 0))(
  ( (array!671 (arr!295 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!295 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!634 0))(
  ( (Unit!635) )
))
(declare-datatypes ((tuple3!184 0))(
  ( (tuple3!185 (_1!231 Unit!634) (_2!231 (_ BitVec 32)) (_3!195 array!670)) )
))
(declare-fun lt!4393 () tuple3!184)

(declare-fun e!4839 () tuple3!184)

(assert (=> b!8614 (= lt!4393 e!4839)))

(declare-fun xx!50 () array!670)

(declare-fun lt!4395 () (_ BitVec 32))

(declare-fun c!1004 () Bool)

(assert (=> b!8614 (= c!1004 (bvsle lt!4395 (bvadd (bvsub (size!295 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8614 (= lt!4395 #b00000000000000000000000000000000)))

(declare-fun lt!4394 () array!670)

(assert (=> b!8614 (= lt!4394 (array!671 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8615 () Bool)

(declare-fun Unit!636 () Unit!634)

(assert (=> b!8615 (= e!4839 (tuple3!185 Unit!636 lt!4395 lt!4394))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun b!8616 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!670 (_ BitVec 32) array!670) tuple3!184)

(assert (=> b!8616 (= e!4839 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4395 lt!4394))))

(declare-fun b!8617 () Bool)

(declare-fun res!7027 () Bool)

(assert (=> b!8617 (=> (not res!7027) (not e!4838))))

(declare-fun f!79 () array!670)

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8617 (= res!7027 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8618 () Bool)

(declare-fun res!7021 () Bool)

(assert (=> b!8618 (=> (not res!7021) (not e!4838))))

(assert (=> b!8618 (= res!7021 (bvsle i!190 jz!36))))

(declare-fun b!8619 () Bool)

(declare-fun res!7024 () Bool)

(assert (=> b!8619 (=> (not res!7024) (not e!4838))))

(assert (=> b!8619 (= res!7024 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8620 () Bool)

(declare-fun res!7028 () Bool)

(declare-fun e!4840 () Bool)

(assert (=> b!8620 (=> (not res!7028) (not e!4840))))

(declare-fun xxInv!0 (array!670) Bool)

(assert (=> b!8620 (= res!7028 (xxInv!0 xx!50))))

(declare-fun b!8621 () Bool)

(declare-fun res!7025 () Bool)

(assert (=> b!8621 (=> (not res!7025) (not e!4838))))

(declare-fun fInv!0 (array!670) Bool)

(assert (=> b!8621 (= res!7025 (fInv!0 f!79))))

(declare-fun b!8622 () Bool)

(declare-fun res!7031 () Bool)

(assert (=> b!8622 (=> (not res!7031) (not e!4838))))

(assert (=> b!8622 (= res!7031 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8623 () Bool)

(declare-fun res!7026 () Bool)

(assert (=> b!8623 (=> (not res!7026) (not e!4838))))

(declare-fun q!51 () array!670)

(declare-fun qInv!0 (array!670) Bool)

(assert (=> b!8623 (= res!7026 (qInv!0 q!51))))

(declare-fun b!8624 () Bool)

(declare-fun lt!4391 () (_ BitVec 32))

(assert (=> b!8624 (= e!4838 (and (bvsgt lt!4391 jz!36) (bvsle #b00000000000000000000000000000000 lt!4391) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!8624 (= lt!4391 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8625 () Bool)

(declare-fun res!7023 () Bool)

(assert (=> b!8625 (=> (not res!7023) (not e!4838))))

(assert (=> b!8625 (= res!7023 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8626 () Bool)

(assert (=> b!8626 (= e!4840 e!4842)))

(declare-fun res!7030 () Bool)

(assert (=> b!8626 (=> (not res!7030) (not e!4842))))

(declare-fun lt!4392 () (_ BitVec 32))

(assert (=> b!8626 (= res!7030 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4392 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4392) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8626 (= lt!4392 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun res!7022 () Bool)

(assert (=> start!1675 (=> (not res!7022) (not e!4840))))

(assert (=> start!1675 (= res!7022 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1675 e!4840))

(declare-fun array_inv!245 (array!670) Bool)

(assert (=> start!1675 (array_inv!245 f!79)))

(assert (=> start!1675 (array_inv!245 q!51)))

(assert (=> start!1675 true))

(assert (=> start!1675 (array_inv!245 xx!50)))

(declare-fun b!8627 () Bool)

(declare-fun res!7019 () Bool)

(assert (=> b!8627 (=> (not res!7019) (not e!4838))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8627 (= res!7019 (P!3 (select (store (arr!295 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000000) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000001) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000010) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000011) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000100) (select (arr!295 f!79) i!190)))) i!190)))))

(declare-fun b!8628 () Bool)

(declare-fun res!7029 () Bool)

(assert (=> b!8628 (=> (not res!7029) (not e!4838))))

(assert (=> b!8628 (= res!7029 (Q!0 (select (arr!295 f!79) i!190)))))

(assert (= (and start!1675 res!7022) b!8620))

(assert (= (and b!8620 res!7028) b!8626))

(assert (= (and b!8626 res!7030) b!8614))

(assert (= (and b!8614 c!1004) b!8616))

(assert (= (and b!8614 (not c!1004)) b!8615))

(assert (= (and b!8614 res!7020) b!8621))

(assert (= (and b!8621 res!7025) b!8623))

(assert (= (and b!8623 res!7026) b!8618))

(assert (= (and b!8618 res!7021) b!8619))

(assert (= (and b!8619 res!7024) b!8625))

(assert (= (and b!8625 res!7023) b!8622))

(assert (= (and b!8622 res!7031) b!8617))

(assert (= (and b!8617 res!7027) b!8628))

(assert (= (and b!8628 res!7029) b!8627))

(assert (= (and b!8627 res!7019) b!8624))

(declare-fun m!12893 () Bool)

(assert (=> b!8623 m!12893))

(declare-fun m!12895 () Bool)

(assert (=> b!8616 m!12895))

(declare-fun m!12897 () Bool)

(assert (=> b!8620 m!12897))

(declare-fun m!12899 () Bool)

(assert (=> b!8628 m!12899))

(assert (=> b!8628 m!12899))

(declare-fun m!12901 () Bool)

(assert (=> b!8628 m!12901))

(declare-fun m!12903 () Bool)

(assert (=> b!8621 m!12903))

(declare-fun m!12905 () Bool)

(assert (=> start!1675 m!12905))

(declare-fun m!12907 () Bool)

(assert (=> start!1675 m!12907))

(declare-fun m!12909 () Bool)

(assert (=> start!1675 m!12909))

(declare-fun m!12911 () Bool)

(assert (=> b!8627 m!12911))

(declare-fun m!12913 () Bool)

(assert (=> b!8627 m!12913))

(declare-fun m!12915 () Bool)

(assert (=> b!8627 m!12915))

(declare-fun m!12917 () Bool)

(assert (=> b!8627 m!12917))

(declare-fun m!12919 () Bool)

(assert (=> b!8627 m!12919))

(declare-fun m!12921 () Bool)

(assert (=> b!8627 m!12921))

(declare-fun m!12923 () Bool)

(assert (=> b!8627 m!12923))

(declare-fun m!12925 () Bool)

(assert (=> b!8627 m!12925))

(assert (=> b!8627 m!12921))

(declare-fun m!12927 () Bool)

(assert (=> b!8627 m!12927))

(assert (=> b!8627 m!12899))

(declare-fun m!12929 () Bool)

(assert (=> b!8627 m!12929))

(declare-fun m!12931 () Bool)

(assert (=> b!8627 m!12931))

(declare-fun m!12933 () Bool)

(assert (=> b!8627 m!12933))

(assert (=> b!8625 m!12913))

(assert (=> b!8625 m!12913))

(declare-fun m!12935 () Bool)

(assert (=> b!8625 m!12935))

(assert (=> b!8622 m!12915))

(assert (=> b!8622 m!12915))

(declare-fun m!12937 () Bool)

(assert (=> b!8622 m!12937))

(assert (=> b!8617 m!12917))

(assert (=> b!8617 m!12917))

(declare-fun m!12939 () Bool)

(assert (=> b!8617 m!12939))

(assert (=> b!8619 m!12911))

(assert (=> b!8619 m!12911))

(declare-fun m!12941 () Bool)

(assert (=> b!8619 m!12941))

(check-sat (not start!1675) (not b!8622) (not b!8621) (not b!8627) (not b!8620) (not b!8619) (not b!8616) (not b!8625) (not b!8628) (not b!8623) (not b!8617))
(check-sat)
