; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1621 () Bool)

(assert start!1621)

(declare-fun b!8122 () Bool)

(declare-datatypes ((array!649 0))(
  ( (array!650 (arr!286 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!286 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!597 0))(
  ( (Unit!598) )
))
(declare-datatypes ((tuple3!166 0))(
  ( (tuple3!167 (_1!216 Unit!597) (_2!216 (_ BitVec 32)) (_3!183 array!649)) )
))
(declare-fun e!4574 () tuple3!166)

(declare-fun lt!4202 () (_ BitVec 32))

(declare-fun lt!4201 () array!649)

(declare-fun Unit!599 () Unit!597)

(assert (=> b!8122 (= e!4574 (tuple3!167 Unit!599 lt!4202 lt!4201))))

(declare-fun b!8123 () Bool)

(declare-fun res!6611 () Bool)

(declare-fun e!4577 () Bool)

(assert (=> b!8123 (=> (not res!6611) (not e!4577))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8123 (= res!6611 (bvsle i!190 jz!36))))

(declare-fun b!8124 () Bool)

(declare-fun res!6605 () Bool)

(declare-fun e!4575 () Bool)

(assert (=> b!8124 (=> (not res!6605) (not e!4575))))

(declare-fun xx!50 () array!649)

(declare-fun xxInv!0 (array!649) Bool)

(assert (=> b!8124 (= res!6605 (xxInv!0 xx!50))))

(declare-fun b!8125 () Bool)

(declare-fun res!6606 () Bool)

(assert (=> b!8125 (=> (not res!6606) (not e!4577))))

(declare-fun f!79 () array!649)

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8125 (= res!6606 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8126 () Bool)

(declare-fun res!6614 () Bool)

(assert (=> b!8126 (=> (not res!6614) (not e!4577))))

(declare-fun fInv!0 (array!649) Bool)

(assert (=> b!8126 (= res!6614 (fInv!0 f!79))))

(declare-fun b!8127 () Bool)

(declare-fun res!6613 () Bool)

(assert (=> b!8127 (=> (not res!6613) (not e!4577))))

(declare-fun q!51 () array!649)

(declare-fun qInv!0 (array!649) Bool)

(assert (=> b!8127 (= res!6613 (qInv!0 q!51))))

(declare-fun b!8128 () Bool)

(declare-fun e!4576 () Bool)

(assert (=> b!8128 (= e!4576 e!4577)))

(declare-fun res!6610 () Bool)

(assert (=> b!8128 (=> (not res!6610) (not e!4577))))

(assert (=> b!8128 (= res!6610 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4203 () tuple3!166)

(assert (=> b!8128 (= lt!4203 e!4574)))

(declare-fun c!965 () Bool)

(assert (=> b!8128 (= c!965 (bvsle lt!4202 (bvadd (bvsub (size!286 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8128 (= lt!4202 #b00000000000000000000000000000000)))

(assert (=> b!8128 (= lt!4201 (array!650 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8129 () Bool)

(assert (=> b!8129 (= e!4575 e!4576)))

(declare-fun res!6608 () Bool)

(assert (=> b!8129 (=> (not res!6608) (not e!4576))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4200 () (_ BitVec 32))

(assert (=> b!8129 (= res!6608 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4200 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4200) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8129 (= lt!4200 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun res!6609 () Bool)

(assert (=> start!1621 (=> (not res!6609) (not e!4575))))

(assert (=> start!1621 (= res!6609 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1621 e!4575))

(declare-fun array_inv!236 (array!649) Bool)

(assert (=> start!1621 (array_inv!236 f!79)))

(assert (=> start!1621 (array_inv!236 q!51)))

(assert (=> start!1621 true))

(assert (=> start!1621 (array_inv!236 xx!50)))

(declare-fun b!8130 () Bool)

(declare-fun res!6607 () Bool)

(assert (=> b!8130 (=> (not res!6607) (not e!4577))))

(assert (=> b!8130 (= res!6607 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8131 () Bool)

(assert (=> b!8131 (= e!4577 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8132 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!649 (_ BitVec 32) array!649) tuple3!166)

(assert (=> b!8132 (= e!4574 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4202 lt!4201))))

(declare-fun b!8133 () Bool)

(declare-fun res!6612 () Bool)

(assert (=> b!8133 (=> (not res!6612) (not e!4577))))

(assert (=> b!8133 (= res!6612 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(assert (= (and start!1621 res!6609) b!8124))

(assert (= (and b!8124 res!6605) b!8129))

(assert (= (and b!8129 res!6608) b!8128))

(assert (= (and b!8128 c!965) b!8132))

(assert (= (and b!8128 (not c!965)) b!8122))

(assert (= (and b!8128 res!6610) b!8126))

(assert (= (and b!8126 res!6614) b!8127))

(assert (= (and b!8127 res!6613) b!8123))

(assert (= (and b!8123 res!6611) b!8125))

(assert (= (and b!8125 res!6606) b!8130))

(assert (= (and b!8130 res!6607) b!8133))

(assert (= (and b!8133 res!6612) b!8131))

(declare-fun m!12467 () Bool)

(assert (=> b!8127 m!12467))

(declare-fun m!12469 () Bool)

(assert (=> b!8132 m!12469))

(declare-fun m!12471 () Bool)

(assert (=> b!8130 m!12471))

(assert (=> b!8130 m!12471))

(declare-fun m!12473 () Bool)

(assert (=> b!8130 m!12473))

(declare-fun m!12475 () Bool)

(assert (=> b!8133 m!12475))

(assert (=> b!8133 m!12475))

(declare-fun m!12477 () Bool)

(assert (=> b!8133 m!12477))

(declare-fun m!12479 () Bool)

(assert (=> b!8125 m!12479))

(assert (=> b!8125 m!12479))

(declare-fun m!12481 () Bool)

(assert (=> b!8125 m!12481))

(declare-fun m!12483 () Bool)

(assert (=> b!8124 m!12483))

(declare-fun m!12485 () Bool)

(assert (=> start!1621 m!12485))

(declare-fun m!12487 () Bool)

(assert (=> start!1621 m!12487))

(declare-fun m!12489 () Bool)

(assert (=> start!1621 m!12489))

(declare-fun m!12491 () Bool)

(assert (=> b!8126 m!12491))

(check-sat (not start!1621) (not b!8125) (not b!8126) (not b!8133) (not b!8132) (not b!8127) (not b!8124) (not b!8130))
(check-sat)
