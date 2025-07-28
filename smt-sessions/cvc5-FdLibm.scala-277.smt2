; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1807 () Bool)

(assert start!1807)

(declare-fun b!9670 () Bool)

(declare-fun res!7966 () Bool)

(declare-fun e!5109 () Bool)

(assert (=> b!9670 (=> (not res!7966) (not e!5109))))

(declare-datatypes ((array!682 0))(
  ( (array!683 (arr!295 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!295 (_ BitVec 32))) )
))
(declare-fun f!79 () array!682)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9670 (= res!7966 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9671 () Bool)

(declare-fun res!7960 () Bool)

(assert (=> b!9671 (=> (not res!7960) (not e!5109))))

(assert (=> b!9671 (= res!7960 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun res!7967 () Bool)

(declare-fun e!5110 () Bool)

(assert (=> start!1807 (=> (not res!7967) (not e!5110))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1807 (= res!7967 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1807 e!5110))

(declare-fun array_inv!245 (array!682) Bool)

(assert (=> start!1807 (array_inv!245 f!79)))

(declare-fun q!51 () array!682)

(assert (=> start!1807 (array_inv!245 q!51)))

(assert (=> start!1807 true))

(declare-fun xx!50 () array!682)

(assert (=> start!1807 (array_inv!245 xx!50)))

(declare-fun b!9672 () Bool)

(declare-fun e!5114 () Bool)

(assert (=> b!9672 (= e!5114 e!5109)))

(declare-fun res!7964 () Bool)

(assert (=> b!9672 (=> (not res!7964) (not e!5109))))

(assert (=> b!9672 (= res!7964 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!689 0))(
  ( (Unit!690) )
))
(declare-datatypes ((tuple3!184 0))(
  ( (tuple3!185 (_1!235 Unit!689) (_2!235 (_ BitVec 32)) (_3!195 array!682)) )
))
(declare-fun lt!4659 () tuple3!184)

(declare-fun e!5113 () tuple3!184)

(assert (=> b!9672 (= lt!4659 e!5113)))

(declare-fun lt!4657 () (_ BitVec 32))

(declare-fun c!1063 () Bool)

(assert (=> b!9672 (= c!1063 (bvsle lt!4657 (bvadd (bvsub (size!295 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9672 (= lt!4657 #b00000000000000000000000000000000)))

(declare-fun lt!4660 () array!682)

(assert (=> b!9672 (= lt!4660 (array!683 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9673 () Bool)

(assert (=> b!9673 (= e!5110 e!5114)))

(declare-fun res!7968 () Bool)

(assert (=> b!9673 (=> (not res!7968) (not e!5114))))

(declare-fun lt!4658 () (_ BitVec 32))

(assert (=> b!9673 (= res!7968 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4658 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4658) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9673 (= lt!4658 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9674 () Bool)

(declare-fun res!7959 () Bool)

(assert (=> b!9674 (=> (not res!7959) (not e!5109))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9674 (= res!7959 (P!3 (select (store (arr!295 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000000) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000001) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000010) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000011) (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!295 xx!50) #b00000000000000000000000000000100) (select (arr!295 f!79) i!190)))) i!190)))))

(declare-fun b!9675 () Bool)

(declare-fun Unit!691 () Unit!689)

(assert (=> b!9675 (= e!5113 (tuple3!185 Unit!691 lt!4657 lt!4660))))

(declare-fun b!9676 () Bool)

(declare-fun res!7961 () Bool)

(assert (=> b!9676 (=> (not res!7961) (not e!5109))))

(assert (=> b!9676 (= res!7961 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9677 () Bool)

(declare-fun res!7958 () Bool)

(assert (=> b!9677 (=> (not res!7958) (not e!5109))))

(assert (=> b!9677 (= res!7958 (Q!0 (select (arr!295 f!79) i!190)))))

(declare-fun b!9678 () Bool)

(declare-fun res!7965 () Bool)

(assert (=> b!9678 (=> (not res!7965) (not e!5109))))

(assert (=> b!9678 (= res!7965 (bvsle i!190 jz!36))))

(declare-fun b!9679 () Bool)

(declare-fun res!7969 () Bool)

(assert (=> b!9679 (=> (not res!7969) (not e!5109))))

(declare-fun fInv!0 (array!682) Bool)

(assert (=> b!9679 (= res!7969 (fInv!0 f!79))))

(declare-fun b!9680 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!682 (_ BitVec 32) array!682) tuple3!184)

(assert (=> b!9680 (= e!5113 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4657 lt!4660))))

(declare-fun b!9681 () Bool)

(declare-fun res!7962 () Bool)

(assert (=> b!9681 (=> (not res!7962) (not e!5110))))

(declare-fun xxInv!0 (array!682) Bool)

(assert (=> b!9681 (= res!7962 (xxInv!0 xx!50))))

(declare-fun b!9682 () Bool)

(declare-fun lt!4661 () (_ BitVec 32))

(assert (=> b!9682 (= e!5109 (and (bvsgt lt!4661 jz!36) (bvsle #b00000000000000000000000000000000 lt!4661) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!9682 (= lt!4661 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9683 () Bool)

(declare-fun res!7957 () Bool)

(assert (=> b!9683 (=> (not res!7957) (not e!5109))))

(declare-fun qInv!0 (array!682) Bool)

(assert (=> b!9683 (= res!7957 (qInv!0 q!51))))

(declare-fun b!9684 () Bool)

(declare-fun res!7963 () Bool)

(assert (=> b!9684 (=> (not res!7963) (not e!5109))))

(assert (=> b!9684 (= res!7963 (Q!0 (select (arr!295 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(assert (= (and start!1807 res!7967) b!9681))

(assert (= (and b!9681 res!7962) b!9673))

(assert (= (and b!9673 res!7968) b!9672))

(assert (= (and b!9672 c!1063) b!9680))

(assert (= (and b!9672 (not c!1063)) b!9675))

(assert (= (and b!9672 res!7964) b!9679))

(assert (= (and b!9679 res!7969) b!9683))

(assert (= (and b!9683 res!7957) b!9678))

(assert (= (and b!9678 res!7965) b!9670))

(assert (= (and b!9670 res!7966) b!9676))

(assert (= (and b!9676 res!7961) b!9671))

(assert (= (and b!9671 res!7960) b!9684))

(assert (= (and b!9684 res!7963) b!9677))

(assert (= (and b!9677 res!7958) b!9674))

(assert (= (and b!9674 res!7959) b!9682))

(declare-fun m!17101 () Bool)

(assert (=> b!9681 m!17101))

(declare-fun m!17103 () Bool)

(assert (=> b!9684 m!17103))

(assert (=> b!9684 m!17103))

(declare-fun m!17105 () Bool)

(assert (=> b!9684 m!17105))

(declare-fun m!17107 () Bool)

(assert (=> b!9679 m!17107))

(declare-fun m!17109 () Bool)

(assert (=> b!9671 m!17109))

(assert (=> b!9671 m!17109))

(declare-fun m!17111 () Bool)

(assert (=> b!9671 m!17111))

(declare-fun m!17113 () Bool)

(assert (=> b!9680 m!17113))

(declare-fun m!17115 () Bool)

(assert (=> b!9683 m!17115))

(declare-fun m!17117 () Bool)

(assert (=> start!1807 m!17117))

(declare-fun m!17119 () Bool)

(assert (=> start!1807 m!17119))

(declare-fun m!17121 () Bool)

(assert (=> start!1807 m!17121))

(declare-fun m!17123 () Bool)

(assert (=> b!9677 m!17123))

(assert (=> b!9677 m!17123))

(declare-fun m!17125 () Bool)

(assert (=> b!9677 m!17125))

(declare-fun m!17127 () Bool)

(assert (=> b!9670 m!17127))

(assert (=> b!9670 m!17127))

(declare-fun m!17129 () Bool)

(assert (=> b!9670 m!17129))

(declare-fun m!17131 () Bool)

(assert (=> b!9676 m!17131))

(assert (=> b!9676 m!17131))

(declare-fun m!17133 () Bool)

(assert (=> b!9676 m!17133))

(assert (=> b!9674 m!17127))

(assert (=> b!9674 m!17131))

(assert (=> b!9674 m!17109))

(assert (=> b!9674 m!17103))

(declare-fun m!17135 () Bool)

(assert (=> b!9674 m!17135))

(declare-fun m!17137 () Bool)

(assert (=> b!9674 m!17137))

(declare-fun m!17139 () Bool)

(assert (=> b!9674 m!17139))

(declare-fun m!17141 () Bool)

(assert (=> b!9674 m!17141))

(assert (=> b!9674 m!17137))

(declare-fun m!17143 () Bool)

(assert (=> b!9674 m!17143))

(assert (=> b!9674 m!17123))

(declare-fun m!17145 () Bool)

(assert (=> b!9674 m!17145))

(declare-fun m!17147 () Bool)

(assert (=> b!9674 m!17147))

(declare-fun m!17149 () Bool)

(assert (=> b!9674 m!17149))

(push 1)

(assert (not b!9680))

(assert (not b!9681))

(assert (not b!9670))

(assert (not b!9679))

(assert (not b!9683))

(assert (not b!9684))

(assert (not b!9671))

(assert (not start!1807))

(assert (not b!9674))

(assert (not b!9677))

(assert (not b!9676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

