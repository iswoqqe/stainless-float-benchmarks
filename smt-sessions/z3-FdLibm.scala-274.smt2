; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1695 () Bool)

(assert start!1695)

(declare-fun b!8833 () Bool)

(declare-fun res!7234 () Bool)

(declare-fun e!4839 () Bool)

(assert (=> b!8833 (=> (not res!7234) (not e!4839))))

(declare-datatypes ((array!667 0))(
  ( (array!668 (arr!292 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!292 (_ BitVec 32))) )
))
(declare-fun f!79 () array!667)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8833 (= res!7234 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8834 () Bool)

(declare-fun res!7230 () Bool)

(assert (=> b!8834 (=> (not res!7230) (not e!4839))))

(declare-fun fInv!0 (array!667) Bool)

(assert (=> b!8834 (= res!7230 (fInv!0 f!79))))

(declare-fun b!8835 () Bool)

(declare-fun res!7238 () Bool)

(assert (=> b!8835 (=> (not res!7238) (not e!4839))))

(assert (=> b!8835 (= res!7238 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8836 () Bool)

(declare-fun res!7240 () Bool)

(assert (=> b!8836 (=> (not res!7240) (not e!4839))))

(declare-fun q!51 () array!667)

(declare-fun xx!50 () array!667)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8836 (= res!7240 (P!3 (select (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) i!190)))))

(declare-fun res!7226 () Bool)

(declare-fun e!4841 () Bool)

(assert (=> start!1695 (=> (not res!7226) (not e!4841))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1695 (= res!7226 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1695 e!4841))

(declare-fun array_inv!242 (array!667) Bool)

(assert (=> start!1695 (array_inv!242 f!79)))

(assert (=> start!1695 (array_inv!242 q!51)))

(assert (=> start!1695 true))

(assert (=> start!1695 (array_inv!242 xx!50)))

(declare-fun b!8837 () Bool)

(declare-fun res!7237 () Bool)

(assert (=> b!8837 (=> (not res!7237) (not e!4841))))

(declare-fun xxInv!0 (array!667) Bool)

(assert (=> b!8837 (= res!7237 (xxInv!0 xx!50))))

(declare-fun b!8838 () Bool)

(declare-fun res!7233 () Bool)

(assert (=> b!8838 (=> (not res!7233) (not e!4839))))

(assert (=> b!8838 (= res!7233 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8839 () Bool)

(declare-datatypes ((Unit!640 0))(
  ( (Unit!641) )
))
(declare-datatypes ((tuple3!178 0))(
  ( (tuple3!179 (_1!225 Unit!640) (_2!225 (_ BitVec 32)) (_3!189 array!667)) )
))
(declare-fun e!4834 () tuple3!178)

(declare-fun lt!4418 () (_ BitVec 32))

(declare-fun lt!4419 () array!667)

(declare-fun Unit!642 () Unit!640)

(assert (=> b!8839 (= e!4834 (tuple3!179 Unit!642 lt!4418 lt!4419))))

(declare-fun b!8840 () Bool)

(declare-fun res!7227 () Bool)

(declare-fun e!4837 () Bool)

(assert (=> b!8840 (=> (not res!7227) (not e!4837))))

(declare-fun lt!4416 () (_ BitVec 32))

(declare-datatypes ((tuple4!200 0))(
  ( (tuple4!201 (_1!226 Unit!640) (_2!226 (_ BitVec 32)) (_3!190 array!667) (_4!100 array!667)) )
))
(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!667 (_ BitVec 32) array!667 array!667) tuple4!200)

(assert (=> b!8840 (= res!7227 (bvsle #b00000000000000000000000000000000 (_2!226 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4416 (array!668 (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) (size!292 q!51)) f!79))))))

(declare-fun b!8841 () Bool)

(declare-fun e!4838 () Bool)

(assert (=> b!8841 (= e!4838 e!4839)))

(declare-fun res!7235 () Bool)

(assert (=> b!8841 (=> (not res!7235) (not e!4839))))

(assert (=> b!8841 (= res!7235 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4415 () tuple3!178)

(assert (=> b!8841 (= lt!4415 e!4834)))

(declare-fun c!1010 () Bool)

(assert (=> b!8841 (= c!1010 (bvsle lt!4418 (bvadd (bvsub (size!292 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8841 (= lt!4418 #b00000000000000000000000000000000)))

(assert (=> b!8841 (= lt!4419 (array!668 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8842 () Bool)

(declare-fun res!7228 () Bool)

(assert (=> b!8842 (=> (not res!7228) (not e!4839))))

(declare-fun qInv!0 (array!667) Bool)

(assert (=> b!8842 (= res!7228 (qInv!0 q!51))))

(declare-fun b!8843 () Bool)

(declare-fun res!7229 () Bool)

(assert (=> b!8843 (=> (not res!7229) (not e!4839))))

(assert (=> b!8843 (= res!7229 (Q!0 (select (arr!292 f!79) i!190)))))

(declare-fun b!8844 () Bool)

(assert (=> b!8844 (= e!4839 e!4837)))

(declare-fun res!7236 () Bool)

(assert (=> b!8844 (=> (not res!7236) (not e!4837))))

(assert (=> b!8844 (= res!7236 (bvsle lt!4416 jz!36))))

(assert (=> b!8844 (= lt!4416 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!8845 () Bool)

(assert (=> b!8845 (= e!4841 e!4838)))

(declare-fun res!7232 () Bool)

(assert (=> b!8845 (=> (not res!7232) (not e!4838))))

(declare-fun lt!4417 () (_ BitVec 32))

(assert (=> b!8845 (= res!7232 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4417 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4417) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8845 (= lt!4417 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8846 () Bool)

(assert (=> b!8846 (= e!4837 (and (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8847 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!667 (_ BitVec 32) array!667) tuple3!178)

(assert (=> b!8847 (= e!4834 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4418 lt!4419))))

(declare-fun b!8848 () Bool)

(declare-fun res!7231 () Bool)

(assert (=> b!8848 (=> (not res!7231) (not e!4839))))

(assert (=> b!8848 (= res!7231 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8849 () Bool)

(declare-fun res!7239 () Bool)

(assert (=> b!8849 (=> (not res!7239) (not e!4839))))

(assert (=> b!8849 (= res!7239 (bvsle i!190 jz!36))))

(assert (= (and start!1695 res!7226) b!8837))

(assert (= (and b!8837 res!7237) b!8845))

(assert (= (and b!8845 res!7232) b!8841))

(assert (= (and b!8841 c!1010) b!8847))

(assert (= (and b!8841 (not c!1010)) b!8839))

(assert (= (and b!8841 res!7235) b!8834))

(assert (= (and b!8834 res!7230) b!8842))

(assert (= (and b!8842 res!7228) b!8849))

(assert (= (and b!8849 res!7239) b!8835))

(assert (= (and b!8835 res!7238) b!8833))

(assert (= (and b!8833 res!7234) b!8848))

(assert (= (and b!8848 res!7231) b!8838))

(assert (= (and b!8838 res!7233) b!8843))

(assert (= (and b!8843 res!7229) b!8836))

(assert (= (and b!8836 res!7240) b!8844))

(assert (= (and b!8844 res!7236) b!8840))

(assert (= (and b!8840 res!7227) b!8846))

(declare-fun m!14557 () Bool)

(assert (=> b!8836 m!14557))

(declare-fun m!14559 () Bool)

(assert (=> b!8836 m!14559))

(declare-fun m!14561 () Bool)

(assert (=> b!8836 m!14561))

(declare-fun m!14563 () Bool)

(assert (=> b!8836 m!14563))

(declare-fun m!14565 () Bool)

(assert (=> b!8836 m!14565))

(declare-fun m!14567 () Bool)

(assert (=> b!8836 m!14567))

(declare-fun m!14569 () Bool)

(assert (=> b!8836 m!14569))

(declare-fun m!14571 () Bool)

(assert (=> b!8836 m!14571))

(declare-fun m!14573 () Bool)

(assert (=> b!8836 m!14573))

(declare-fun m!14575 () Bool)

(assert (=> b!8836 m!14575))

(declare-fun m!14577 () Bool)

(assert (=> b!8836 m!14577))

(declare-fun m!14579 () Bool)

(assert (=> b!8836 m!14579))

(assert (=> b!8836 m!14573))

(declare-fun m!14581 () Bool)

(assert (=> b!8836 m!14581))

(declare-fun m!14583 () Bool)

(assert (=> start!1695 m!14583))

(declare-fun m!14585 () Bool)

(assert (=> start!1695 m!14585))

(declare-fun m!14587 () Bool)

(assert (=> start!1695 m!14587))

(declare-fun m!14589 () Bool)

(assert (=> b!8842 m!14589))

(declare-fun m!14591 () Bool)

(assert (=> b!8834 m!14591))

(declare-fun m!14593 () Bool)

(assert (=> b!8837 m!14593))

(assert (=> b!8835 m!14557))

(assert (=> b!8835 m!14557))

(declare-fun m!14595 () Bool)

(assert (=> b!8835 m!14595))

(assert (=> b!8848 m!14571))

(assert (=> b!8848 m!14571))

(declare-fun m!14597 () Bool)

(assert (=> b!8848 m!14597))

(assert (=> b!8843 m!14579))

(assert (=> b!8843 m!14579))

(declare-fun m!14599 () Bool)

(assert (=> b!8843 m!14599))

(assert (=> b!8838 m!14563))

(assert (=> b!8838 m!14563))

(declare-fun m!14601 () Bool)

(assert (=> b!8838 m!14601))

(assert (=> b!8833 m!14559))

(assert (=> b!8833 m!14559))

(declare-fun m!14603 () Bool)

(assert (=> b!8833 m!14603))

(declare-fun m!14605 () Bool)

(assert (=> b!8847 m!14605))

(assert (=> b!8840 m!14557))

(assert (=> b!8840 m!14559))

(assert (=> b!8840 m!14561))

(assert (=> b!8840 m!14571))

(assert (=> b!8840 m!14563))

(assert (=> b!8840 m!14565))

(assert (=> b!8840 m!14567))

(declare-fun m!14607 () Bool)

(assert (=> b!8840 m!14607))

(assert (=> b!8840 m!14579))

(assert (=> b!8840 m!14569))

(assert (=> b!8840 m!14575))

(assert (=> b!8840 m!14577))

(check-sat (not b!8834) (not b!8836) (not b!8848) (not b!8837) (not b!8840) (not b!8835) (not b!8838) (not start!1695) (not b!8833) (not b!8847) (not b!8843) (not b!8842))
(check-sat)
