; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1631 () Bool)

(assert start!1631)

(declare-fun b!8396 () Bool)

(declare-fun res!6869 () Bool)

(declare-fun e!4584 () Bool)

(assert (=> b!8396 (=> (not res!6869) (not e!4584))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8396 (= res!6869 (bvsle i!190 jz!36))))

(declare-fun b!8397 () Bool)

(assert (=> b!8397 (= e!4584 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(declare-fun b!8398 () Bool)

(declare-fun res!6874 () Bool)

(assert (=> b!8398 (=> (not res!6874) (not e!4584))))

(declare-datatypes ((array!647 0))(
  ( (array!648 (arr!284 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!284 (_ BitVec 32))) )
))
(declare-fun f!79 () array!647)

(declare-fun fInv!0 (array!647) Bool)

(assert (=> b!8398 (= res!6874 (fInv!0 f!79))))

(declare-fun b!8399 () Bool)

(declare-fun res!6870 () Bool)

(assert (=> b!8399 (=> (not res!6870) (not e!4584))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8399 (= res!6870 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8400 () Bool)

(declare-datatypes ((Unit!603 0))(
  ( (Unit!604) )
))
(declare-datatypes ((tuple3!162 0))(
  ( (tuple3!163 (_1!213 Unit!603) (_2!213 (_ BitVec 32)) (_3!181 array!647)) )
))
(declare-fun e!4582 () tuple3!162)

(declare-fun lt!4230 () (_ BitVec 32))

(declare-fun lt!4229 () array!647)

(declare-fun Unit!605 () Unit!603)

(assert (=> b!8400 (= e!4582 (tuple3!163 Unit!605 lt!4230 lt!4229))))

(declare-fun b!8401 () Bool)

(declare-fun res!6872 () Bool)

(declare-fun e!4586 () Bool)

(assert (=> b!8401 (=> (not res!6872) (not e!4586))))

(declare-fun xx!50 () array!647)

(declare-fun xxInv!0 (array!647) Bool)

(assert (=> b!8401 (= res!6872 (xxInv!0 xx!50))))

(declare-fun b!8395 () Bool)

(declare-fun res!6871 () Bool)

(assert (=> b!8395 (=> (not res!6871) (not e!4584))))

(assert (=> b!8395 (= res!6871 (Q!0 (select (arr!284 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun res!6866 () Bool)

(assert (=> start!1631 (=> (not res!6866) (not e!4586))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1631 (= res!6866 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1631 e!4586))

(declare-fun array_inv!234 (array!647) Bool)

(assert (=> start!1631 (array_inv!234 f!79)))

(declare-fun q!51 () array!647)

(assert (=> start!1631 (array_inv!234 q!51)))

(assert (=> start!1631 true))

(assert (=> start!1631 (array_inv!234 xx!50)))

(declare-fun b!8402 () Bool)

(declare-fun res!6868 () Bool)

(assert (=> b!8402 (=> (not res!6868) (not e!4584))))

(declare-fun qInv!0 (array!647) Bool)

(assert (=> b!8402 (= res!6868 (qInv!0 q!51))))

(declare-fun b!8403 () Bool)

(declare-fun e!4588 () Bool)

(assert (=> b!8403 (= e!4588 e!4584)))

(declare-fun res!6873 () Bool)

(assert (=> b!8403 (=> (not res!6873) (not e!4584))))

(assert (=> b!8403 (= res!6873 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4227 () tuple3!162)

(assert (=> b!8403 (= lt!4227 e!4582)))

(declare-fun c!971 () Bool)

(assert (=> b!8403 (= c!971 (bvsle lt!4230 (bvadd (bvsub (size!284 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8403 (= lt!4230 #b00000000000000000000000000000000)))

(assert (=> b!8403 (= lt!4229 (array!648 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8404 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!647 (_ BitVec 32) array!647) tuple3!162)

(assert (=> b!8404 (= e!4582 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4230 lt!4229))))

(declare-fun b!8405 () Bool)

(assert (=> b!8405 (= e!4586 e!4588)))

(declare-fun res!6867 () Bool)

(assert (=> b!8405 (=> (not res!6867) (not e!4588))))

(declare-fun lt!4228 () (_ BitVec 32))

(assert (=> b!8405 (= res!6867 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4228 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4228) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8405 (= lt!4228 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1631 res!6866) b!8401))

(assert (= (and b!8401 res!6872) b!8405))

(assert (= (and b!8405 res!6867) b!8403))

(assert (= (and b!8403 c!971) b!8404))

(assert (= (and b!8403 (not c!971)) b!8400))

(assert (= (and b!8403 res!6873) b!8398))

(assert (= (and b!8398 res!6874) b!8402))

(assert (= (and b!8402 res!6868) b!8396))

(assert (= (and b!8396 res!6869) b!8395))

(assert (= (and b!8395 res!6871) b!8399))

(assert (= (and b!8399 res!6870) b!8397))

(declare-fun m!14231 () Bool)

(assert (=> b!8401 m!14231))

(declare-fun m!14233 () Bool)

(assert (=> b!8399 m!14233))

(assert (=> b!8399 m!14233))

(declare-fun m!14235 () Bool)

(assert (=> b!8399 m!14235))

(declare-fun m!14237 () Bool)

(assert (=> b!8404 m!14237))

(declare-fun m!14239 () Bool)

(assert (=> start!1631 m!14239))

(declare-fun m!14241 () Bool)

(assert (=> start!1631 m!14241))

(declare-fun m!14243 () Bool)

(assert (=> start!1631 m!14243))

(declare-fun m!14245 () Bool)

(assert (=> b!8402 m!14245))

(declare-fun m!14247 () Bool)

(assert (=> b!8398 m!14247))

(declare-fun m!14249 () Bool)

(assert (=> b!8395 m!14249))

(assert (=> b!8395 m!14249))

(declare-fun m!14251 () Bool)

(assert (=> b!8395 m!14251))

(check-sat (not b!8395) (not b!8401) (not b!8404) (not b!8398) (not b!8402) (not start!1631) (not b!8399))
(check-sat)
