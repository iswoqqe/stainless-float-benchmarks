; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1601 () Bool)

(assert start!1601)

(declare-fun b!8227 () Bool)

(declare-fun e!4464 () Bool)

(declare-fun e!4463 () Bool)

(assert (=> b!8227 (= e!4464 e!4463)))

(declare-fun res!6735 () Bool)

(assert (=> b!8227 (=> (not res!6735) (not e!4463))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4141 () (_ BitVec 32))

(assert (=> b!8227 (= res!6735 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4141 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4141) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8227 (= lt!4141 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8228 () Bool)

(declare-fun res!6734 () Bool)

(declare-fun e!4460 () Bool)

(assert (=> b!8228 (=> (not res!6734) (not e!4460))))

(declare-datatypes ((array!637 0))(
  ( (array!638 (arr!280 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!280 (_ BitVec 32))) )
))
(declare-fun q!51 () array!637)

(declare-fun qInv!0 (array!637) Bool)

(assert (=> b!8228 (= res!6734 (qInv!0 q!51))))

(declare-fun b!8229 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8229 (= e!4460 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(declare-fun b!8230 () Bool)

(declare-fun res!6738 () Bool)

(assert (=> b!8230 (=> (not res!6738) (not e!4460))))

(declare-fun f!79 () array!637)

(declare-fun fInv!0 (array!637) Bool)

(assert (=> b!8230 (= res!6738 (fInv!0 f!79))))

(declare-fun b!8232 () Bool)

(declare-datatypes ((Unit!585 0))(
  ( (Unit!586) )
))
(declare-datatypes ((tuple3!154 0))(
  ( (tuple3!155 (_1!207 Unit!585) (_2!207 (_ BitVec 32)) (_3!177 array!637)) )
))
(declare-fun e!4461 () tuple3!154)

(declare-fun lt!4142 () (_ BitVec 32))

(declare-fun lt!4140 () array!637)

(declare-fun Unit!587 () Unit!585)

(assert (=> b!8232 (= e!4461 (tuple3!155 Unit!587 lt!4142 lt!4140))))

(declare-fun b!8233 () Bool)

(assert (=> b!8233 (= e!4463 e!4460)))

(declare-fun res!6737 () Bool)

(assert (=> b!8233 (=> (not res!6737) (not e!4460))))

(assert (=> b!8233 (= res!6737 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4143 () tuple3!154)

(assert (=> b!8233 (= lt!4143 e!4461)))

(declare-fun c!953 () Bool)

(declare-fun xx!50 () array!637)

(assert (=> b!8233 (= c!953 (bvsle lt!4142 (bvadd (bvsub (size!280 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8233 (= lt!4142 #b00000000000000000000000000000000)))

(assert (=> b!8233 (= lt!4140 (array!638 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8234 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!637 (_ BitVec 32) array!637) tuple3!154)

(assert (=> b!8234 (= e!4461 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4142 lt!4140))))

(declare-fun res!6736 () Bool)

(assert (=> start!1601 (=> (not res!6736) (not e!4464))))

(assert (=> start!1601 (= res!6736 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1601 e!4464))

(declare-fun array_inv!230 (array!637) Bool)

(assert (=> start!1601 (array_inv!230 f!79)))

(assert (=> start!1601 (array_inv!230 q!51)))

(assert (=> start!1601 true))

(assert (=> start!1601 (array_inv!230 xx!50)))

(declare-fun b!8231 () Bool)

(declare-fun res!6739 () Bool)

(assert (=> b!8231 (=> (not res!6739) (not e!4464))))

(declare-fun xxInv!0 (array!637) Bool)

(assert (=> b!8231 (= res!6739 (xxInv!0 xx!50))))

(assert (= (and start!1601 res!6736) b!8231))

(assert (= (and b!8231 res!6739) b!8227))

(assert (= (and b!8227 res!6735) b!8233))

(assert (= (and b!8233 c!953) b!8234))

(assert (= (and b!8233 (not c!953)) b!8232))

(assert (= (and b!8233 res!6737) b!8230))

(assert (= (and b!8230 res!6738) b!8228))

(assert (= (and b!8228 res!6734) b!8229))

(declare-fun m!14135 () Bool)

(assert (=> b!8230 m!14135))

(declare-fun m!14137 () Bool)

(assert (=> b!8231 m!14137))

(declare-fun m!14139 () Bool)

(assert (=> start!1601 m!14139))

(declare-fun m!14141 () Bool)

(assert (=> start!1601 m!14141))

(declare-fun m!14143 () Bool)

(assert (=> start!1601 m!14143))

(declare-fun m!14145 () Bool)

(assert (=> b!8228 m!14145))

(declare-fun m!14147 () Bool)

(assert (=> b!8234 m!14147))

(check-sat (not b!8231) (not b!8228) (not start!1601) (not b!8230) (not b!8234))
(check-sat)
