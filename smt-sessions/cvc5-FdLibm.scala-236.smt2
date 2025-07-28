; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1415 () Bool)

(assert start!1415)

(declare-fun b!7029 () Bool)

(declare-fun e!3661 () Bool)

(declare-fun lt!3601 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!7029 (= e!3661 (bvsgt lt!3601 jz!36))))

(declare-datatypes ((array!575 0))(
  ( (array!576 (arr!254 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!254 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!464 0))(
  ( (Unit!465) )
))
(declare-datatypes ((tuple3!102 0))(
  ( (tuple3!103 (_1!166 Unit!464) (_2!166 (_ BitVec 32)) (_3!151 array!575)) )
))
(declare-fun lt!3603 () tuple3!102)

(declare-fun e!3663 () tuple3!102)

(assert (=> b!7029 (= lt!3603 e!3663)))

(declare-fun lt!3599 () (_ BitVec 32))

(declare-fun c!843 () Bool)

(declare-fun xx!50 () array!575)

(assert (=> b!7029 (= c!843 (bvsle lt!3599 (bvadd (bvsub (size!254 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7029 (= lt!3599 #b00000000000000000000000000000000)))

(declare-fun lt!3602 () array!575)

(assert (=> b!7029 (= lt!3602 (array!576 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun b!7030 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!575 (_ BitVec 32) array!575) tuple3!102)

(assert (=> b!7030 (= e!3663 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3599 lt!3602))))

(declare-fun res!5760 () Bool)

(declare-fun e!3658 () Bool)

(assert (=> start!1415 (=> (not res!5760) (not e!3658))))

(assert (=> start!1415 (= res!5760 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1415 e!3658))

(declare-fun f!79 () array!575)

(declare-fun array_inv!204 (array!575) Bool)

(assert (=> start!1415 (array_inv!204 f!79)))

(declare-fun q!51 () array!575)

(assert (=> start!1415 (array_inv!204 q!51)))

(assert (=> start!1415 true))

(assert (=> start!1415 (array_inv!204 xx!50)))

(declare-fun b!7031 () Bool)

(declare-fun res!5770 () Bool)

(declare-fun e!3660 () Bool)

(assert (=> b!7031 (=> (not res!5770) (not e!3660))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7031 (= res!5770 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!7032 () Bool)

(declare-fun e!3657 () Bool)

(assert (=> b!7032 (= e!3660 e!3657)))

(declare-fun res!5766 () Bool)

(assert (=> b!7032 (=> (not res!5766) (not e!3657))))

(assert (=> b!7032 (= res!5766 (bvsle lt!3601 jz!36))))

(assert (=> b!7032 (= lt!3601 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!7033 () Bool)

(declare-fun e!3655 () tuple3!102)

(declare-fun lt!3604 () (_ BitVec 32))

(declare-fun lt!3600 () array!575)

(declare-fun Unit!466 () Unit!464)

(assert (=> b!7033 (= e!3655 (tuple3!103 Unit!466 lt!3604 lt!3600))))

(declare-fun b!7034 () Bool)

(declare-fun res!5768 () Bool)

(assert (=> b!7034 (=> (not res!5768) (not e!3660))))

(declare-fun fInv!0 (array!575) Bool)

(assert (=> b!7034 (= res!5768 (fInv!0 f!79))))

(declare-fun b!7035 () Bool)

(declare-fun res!5758 () Bool)

(assert (=> b!7035 (=> (not res!5758) (not e!3660))))

(assert (=> b!7035 (= res!5758 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!7036 () Bool)

(declare-fun res!5767 () Bool)

(assert (=> b!7036 (=> (not res!5767) (not e!3660))))

(assert (=> b!7036 (= res!5767 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!7037 () Bool)

(declare-fun res!5762 () Bool)

(assert (=> b!7037 (=> (not res!5762) (not e!3660))))

(assert (=> b!7037 (= res!5762 (Q!0 (select (arr!254 f!79) i!190)))))

(declare-fun b!7038 () Bool)

(declare-fun e!3654 () Bool)

(assert (=> b!7038 (= e!3654 e!3660)))

(declare-fun res!5764 () Bool)

(assert (=> b!7038 (=> (not res!5764) (not e!3660))))

(assert (=> b!7038 (= res!5764 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3605 () tuple3!102)

(assert (=> b!7038 (= lt!3605 e!3655)))

(declare-fun c!842 () Bool)

(assert (=> b!7038 (= c!842 (bvsle lt!3604 (bvadd (bvsub (size!254 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7038 (= lt!3604 #b00000000000000000000000000000000)))

(assert (=> b!7038 (= lt!3600 (array!576 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7039 () Bool)

(declare-fun res!5772 () Bool)

(assert (=> b!7039 (=> (not res!5772) (not e!3658))))

(declare-fun xxInv!0 (array!575) Bool)

(assert (=> b!7039 (= res!5772 (xxInv!0 xx!50))))

(declare-fun b!7040 () Bool)

(assert (=> b!7040 (= e!3658 e!3654)))

(declare-fun res!5763 () Bool)

(assert (=> b!7040 (=> (not res!5763) (not e!3654))))

(declare-fun lt!3597 () (_ BitVec 32))

(assert (=> b!7040 (= res!5763 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3597 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3597) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7040 (= lt!3597 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7041 () Bool)

(declare-fun res!5765 () Bool)

(assert (=> b!7041 (=> (not res!5765) (not e!3660))))

(assert (=> b!7041 (= res!5765 (bvsle i!190 jz!36))))

(declare-fun b!7042 () Bool)

(declare-fun res!5769 () Bool)

(assert (=> b!7042 (=> (not res!5769) (not e!3660))))

(declare-fun qInv!0 (array!575) Bool)

(assert (=> b!7042 (= res!5769 (qInv!0 q!51))))

(declare-fun b!7043 () Bool)

(assert (=> b!7043 (= e!3655 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3604 lt!3600))))

(declare-fun b!7044 () Bool)

(declare-fun res!5759 () Bool)

(assert (=> b!7044 (=> (not res!5759) (not e!3660))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7044 (= res!5759 (P!3 (select (store (arr!254 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000000) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000001) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000010) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000011) (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!254 xx!50) #b00000000000000000000000000000100) (select (arr!254 f!79) i!190)))) i!190)))))

(declare-fun b!7045 () Bool)

(assert (=> b!7045 (= e!3657 e!3661)))

(declare-fun res!5771 () Bool)

(assert (=> b!7045 (=> (not res!5771) (not e!3661))))

(declare-fun lt!3598 () (_ BitVec 32))

(assert (=> b!7045 (= res!5771 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3598 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3598) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7045 (= lt!3598 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7046 () Bool)

(declare-fun res!5761 () Bool)

(assert (=> b!7046 (=> (not res!5761) (not e!3660))))

(assert (=> b!7046 (= res!5761 (Q!0 (select (arr!254 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!7047 () Bool)

(declare-fun Unit!467 () Unit!464)

(assert (=> b!7047 (= e!3663 (tuple3!103 Unit!467 lt!3599 lt!3602))))

(assert (= (and start!1415 res!5760) b!7039))

(assert (= (and b!7039 res!5772) b!7040))

(assert (= (and b!7040 res!5763) b!7038))

(assert (= (and b!7038 c!842) b!7043))

(assert (= (and b!7038 (not c!842)) b!7033))

(assert (= (and b!7038 res!5764) b!7034))

(assert (= (and b!7034 res!5768) b!7042))

(assert (= (and b!7042 res!5769) b!7041))

(assert (= (and b!7041 res!5765) b!7035))

(assert (= (and b!7035 res!5758) b!7046))

(assert (= (and b!7046 res!5761) b!7031))

(assert (= (and b!7031 res!5770) b!7036))

(assert (= (and b!7036 res!5767) b!7037))

(assert (= (and b!7037 res!5762) b!7044))

(assert (= (and b!7044 res!5759) b!7032))

(assert (= (and b!7032 res!5766) b!7045))

(assert (= (and b!7045 res!5771) b!7029))

(assert (= (and b!7029 c!843) b!7030))

(assert (= (and b!7029 (not c!843)) b!7047))

(declare-fun m!13729 () Bool)

(assert (=> b!7031 m!13729))

(assert (=> b!7031 m!13729))

(declare-fun m!13731 () Bool)

(assert (=> b!7031 m!13731))

(declare-fun m!13733 () Bool)

(assert (=> b!7046 m!13733))

(assert (=> b!7046 m!13733))

(declare-fun m!13735 () Bool)

(assert (=> b!7046 m!13735))

(declare-fun m!13737 () Bool)

(assert (=> b!7035 m!13737))

(assert (=> b!7035 m!13737))

(declare-fun m!13739 () Bool)

(assert (=> b!7035 m!13739))

(declare-fun m!13741 () Bool)

(assert (=> b!7034 m!13741))

(declare-fun m!13743 () Bool)

(assert (=> b!7037 m!13743))

(assert (=> b!7037 m!13743))

(declare-fun m!13745 () Bool)

(assert (=> b!7037 m!13745))

(declare-fun m!13747 () Bool)

(assert (=> b!7043 m!13747))

(declare-fun m!13749 () Bool)

(assert (=> b!7039 m!13749))

(declare-fun m!13751 () Bool)

(assert (=> b!7036 m!13751))

(assert (=> b!7036 m!13751))

(declare-fun m!13753 () Bool)

(assert (=> b!7036 m!13753))

(declare-fun m!13755 () Bool)

(assert (=> b!7042 m!13755))

(assert (=> b!7044 m!13737))

(assert (=> b!7044 m!13733))

(assert (=> b!7044 m!13729))

(assert (=> b!7044 m!13751))

(declare-fun m!13757 () Bool)

(assert (=> b!7044 m!13757))

(declare-fun m!13759 () Bool)

(assert (=> b!7044 m!13759))

(declare-fun m!13761 () Bool)

(assert (=> b!7044 m!13761))

(declare-fun m!13763 () Bool)

(assert (=> b!7044 m!13763))

(assert (=> b!7044 m!13759))

(declare-fun m!13765 () Bool)

(assert (=> b!7044 m!13765))

(assert (=> b!7044 m!13743))

(declare-fun m!13767 () Bool)

(assert (=> b!7044 m!13767))

(declare-fun m!13769 () Bool)

(assert (=> b!7044 m!13769))

(declare-fun m!13771 () Bool)

(assert (=> b!7044 m!13771))

(declare-fun m!13773 () Bool)

(assert (=> b!7030 m!13773))

(declare-fun m!13775 () Bool)

(assert (=> start!1415 m!13775))

(declare-fun m!13777 () Bool)

(assert (=> start!1415 m!13777))

(declare-fun m!13779 () Bool)

(assert (=> start!1415 m!13779))

(push 1)

(assert (not b!7042))

(assert (not b!7036))

(assert (not b!7046))

(assert (not b!7035))

(assert (not b!7030))

(assert (not b!7037))

(assert (not b!7034))

(assert (not b!7039))

(assert (not b!7031))

(assert (not start!1415))

(assert (not b!7043))

(assert (not b!7044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

