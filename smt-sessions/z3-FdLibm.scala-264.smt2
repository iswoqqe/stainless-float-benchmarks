; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1615 () Bool)

(assert start!1615)

(declare-fun res!6798 () Bool)

(declare-fun e!4525 () Bool)

(assert (=> start!1615 (=> (not res!6798) (not e!4525))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1615 (= res!6798 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1615 e!4525))

(declare-datatypes ((array!642 0))(
  ( (array!643 (arr!282 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!282 (_ BitVec 32))) )
))
(declare-fun f!79 () array!642)

(declare-fun array_inv!232 (array!642) Bool)

(assert (=> start!1615 (array_inv!232 f!79)))

(declare-fun q!51 () array!642)

(assert (=> start!1615 (array_inv!232 q!51)))

(assert (=> start!1615 true))

(declare-fun xx!50 () array!642)

(assert (=> start!1615 (array_inv!232 xx!50)))

(declare-fun b!8306 () Bool)

(declare-datatypes ((Unit!594 0))(
  ( (Unit!595) )
))
(declare-datatypes ((tuple3!158 0))(
  ( (tuple3!159 (_1!210 Unit!594) (_2!210 (_ BitVec 32)) (_3!179 array!642)) )
))
(declare-fun e!4526 () tuple3!158)

(declare-fun lt!4184 () (_ BitVec 32))

(declare-fun lt!4183 () array!642)

(declare-fun Unit!596 () Unit!594)

(assert (=> b!8306 (= e!4526 (tuple3!159 Unit!596 lt!4184 lt!4183))))

(declare-fun b!8307 () Bool)

(declare-fun e!4523 () Bool)

(assert (=> b!8307 (= e!4525 e!4523)))

(declare-fun res!6800 () Bool)

(assert (=> b!8307 (=> (not res!6800) (not e!4523))))

(declare-fun lt!4182 () (_ BitVec 32))

(assert (=> b!8307 (= res!6800 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4182 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4182) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8307 (= lt!4182 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8308 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!642 (_ BitVec 32) array!642) tuple3!158)

(assert (=> b!8308 (= e!4526 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4184 lt!4183))))

(declare-fun b!8309 () Bool)

(declare-fun res!6796 () Bool)

(declare-fun e!4521 () Bool)

(assert (=> b!8309 (=> (not res!6796) (not e!4521))))

(declare-fun fInv!0 (array!642) Bool)

(assert (=> b!8309 (= res!6796 (fInv!0 f!79))))

(declare-fun b!8310 () Bool)

(declare-fun res!6797 () Bool)

(assert (=> b!8310 (=> (not res!6797) (not e!4521))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8310 (= res!6797 (Q!0 (select (arr!282 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8311 () Bool)

(declare-fun res!6802 () Bool)

(assert (=> b!8311 (=> (not res!6802) (not e!4521))))

(declare-fun qInv!0 (array!642) Bool)

(assert (=> b!8311 (= res!6802 (qInv!0 q!51))))

(declare-fun b!8312 () Bool)

(declare-fun res!6795 () Bool)

(assert (=> b!8312 (=> (not res!6795) (not e!4521))))

(assert (=> b!8312 (= res!6795 (bvsle i!190 jz!36))))

(declare-fun b!8313 () Bool)

(assert (=> b!8313 (= e!4523 e!4521)))

(declare-fun res!6801 () Bool)

(assert (=> b!8313 (=> (not res!6801) (not e!4521))))

(assert (=> b!8313 (= res!6801 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4185 () tuple3!158)

(assert (=> b!8313 (= lt!4185 e!4526)))

(declare-fun c!962 () Bool)

(assert (=> b!8313 (= c!962 (bvsle lt!4184 (bvadd (bvsub (size!282 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8313 (= lt!4184 #b00000000000000000000000000000000)))

(assert (=> b!8313 (= lt!4183 (array!643 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8314 () Bool)

(assert (=> b!8314 (= e!4521 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!8315 () Bool)

(declare-fun res!6799 () Bool)

(assert (=> b!8315 (=> (not res!6799) (not e!4525))))

(declare-fun xxInv!0 (array!642) Bool)

(assert (=> b!8315 (= res!6799 (xxInv!0 xx!50))))

(assert (= (and start!1615 res!6798) b!8315))

(assert (= (and b!8315 res!6799) b!8307))

(assert (= (and b!8307 res!6800) b!8313))

(assert (= (and b!8313 c!962) b!8308))

(assert (= (and b!8313 (not c!962)) b!8306))

(assert (= (and b!8313 res!6801) b!8309))

(assert (= (and b!8309 res!6796) b!8311))

(assert (= (and b!8311 res!6802) b!8312))

(assert (= (and b!8312 res!6795) b!8310))

(assert (= (and b!8310 res!6797) b!8314))

(declare-fun m!14179 () Bool)

(assert (=> b!8315 m!14179))

(declare-fun m!14181 () Bool)

(assert (=> start!1615 m!14181))

(declare-fun m!14183 () Bool)

(assert (=> start!1615 m!14183))

(declare-fun m!14185 () Bool)

(assert (=> start!1615 m!14185))

(declare-fun m!14187 () Bool)

(assert (=> b!8310 m!14187))

(assert (=> b!8310 m!14187))

(declare-fun m!14189 () Bool)

(assert (=> b!8310 m!14189))

(declare-fun m!14191 () Bool)

(assert (=> b!8311 m!14191))

(declare-fun m!14193 () Bool)

(assert (=> b!8308 m!14193))

(declare-fun m!14195 () Bool)

(assert (=> b!8309 m!14195))

(check-sat (not b!8308) (not b!8309) (not b!8310) (not start!1615) (not b!8315) (not b!8311))
(check-sat)
