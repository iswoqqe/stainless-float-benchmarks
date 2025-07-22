; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1531 () Bool)

(assert start!1531)

(declare-fun b!8094 () Bool)

(declare-fun e!4031 () Bool)

(declare-fun e!4030 () Bool)

(assert (=> b!8094 (= e!4031 e!4030)))

(declare-fun res!6722 () Bool)

(assert (=> b!8094 (=> (not res!6722) (not e!4030))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3863 () (_ BitVec 32))

(assert (=> b!8094 (= res!6722 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3863 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3863) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8094 (= lt!3863 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8095 () Bool)

(declare-fun res!6717 () Bool)

(declare-fun e!4034 () Bool)

(assert (=> b!8095 (=> (not res!6717) (not e!4034))))

(declare-datatypes ((array!599 0))(
  ( (array!600 (arr!263 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!263 (_ BitVec 32))) )
))
(declare-fun f!79 () array!599)

(declare-fun fInv!0 (array!599) Bool)

(assert (=> b!8095 (= res!6717 (fInv!0 f!79))))

(declare-fun b!8096 () Bool)

(declare-fun res!6721 () Bool)

(assert (=> b!8096 (=> (not res!6721) (not e!4034))))

(declare-fun q!51 () array!599)

(declare-fun qInv!0 (array!599) Bool)

(assert (=> b!8096 (= res!6721 (qInv!0 q!51))))

(declare-fun b!8097 () Bool)

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun lt!3861 () (_ BitVec 32))

(declare-datatypes ((Unit!531 0))(
  ( (Unit!532) )
))
(declare-datatypes ((tuple3!120 0))(
  ( (tuple3!121 (_1!181 Unit!531) (_2!181 (_ BitVec 32)) (_3!160 array!599)) )
))
(declare-fun e!4033 () tuple3!120)

(declare-fun xx!50 () array!599)

(declare-fun lt!3862 () array!599)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!599 (_ BitVec 32) array!599) tuple3!120)

(assert (=> b!8097 (= e!4033 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3861 lt!3862))))

(declare-fun b!8098 () Bool)

(declare-fun Unit!533 () Unit!531)

(assert (=> b!8098 (= e!4033 (tuple3!121 Unit!533 lt!3861 lt!3862))))

(declare-fun b!8099 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8099 (= e!4034 (and (bvsle i!190 jz!36) (let ((lhs!76 (bvadd jz!36 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand i!190 #b10000000000000000000000000000000))) (not (= (bvand lhs!76 #b10000000000000000000000000000000) (bvand (bvsub lhs!76 i!190) #b10000000000000000000000000000000)))))))))

(declare-fun b!8100 () Bool)

(assert (=> b!8100 (= e!4030 e!4034)))

(declare-fun res!6718 () Bool)

(assert (=> b!8100 (=> (not res!6718) (not e!4034))))

(assert (=> b!8100 (= res!6718 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3860 () tuple3!120)

(assert (=> b!8100 (= lt!3860 e!4033)))

(declare-fun c!895 () Bool)

(assert (=> b!8100 (= c!895 (bvsle lt!3861 (bvadd (bvsub (size!263 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8100 (= lt!3861 #b00000000000000000000000000000000)))

(assert (=> b!8100 (= lt!3862 (array!600 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!6720 () Bool)

(assert (=> start!1531 (=> (not res!6720) (not e!4031))))

(assert (=> start!1531 (= res!6720 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1531 e!4031))

(declare-fun array_inv!213 (array!599) Bool)

(assert (=> start!1531 (array_inv!213 f!79)))

(assert (=> start!1531 (array_inv!213 q!51)))

(assert (=> start!1531 true))

(assert (=> start!1531 (array_inv!213 xx!50)))

(declare-fun b!8101 () Bool)

(declare-fun res!6719 () Bool)

(assert (=> b!8101 (=> (not res!6719) (not e!4031))))

(declare-fun xxInv!0 (array!599) Bool)

(assert (=> b!8101 (= res!6719 (xxInv!0 xx!50))))

(assert (= (and start!1531 res!6720) b!8101))

(assert (= (and b!8101 res!6719) b!8094))

(assert (= (and b!8094 res!6722) b!8100))

(assert (= (and b!8100 c!895) b!8097))

(assert (= (and b!8100 (not c!895)) b!8098))

(assert (= (and b!8100 res!6718) b!8095))

(assert (= (and b!8095 res!6717) b!8096))

(assert (= (and b!8096 res!6721) b!8099))

(declare-fun m!16025 () Bool)

(assert (=> b!8095 m!16025))

(declare-fun m!16027 () Bool)

(assert (=> start!1531 m!16027))

(declare-fun m!16029 () Bool)

(assert (=> start!1531 m!16029))

(declare-fun m!16031 () Bool)

(assert (=> start!1531 m!16031))

(declare-fun m!16033 () Bool)

(assert (=> b!8101 m!16033))

(declare-fun m!16035 () Bool)

(assert (=> b!8097 m!16035))

(declare-fun m!16037 () Bool)

(assert (=> b!8096 m!16037))

(push 1)

(assert (not b!8096))

(assert (not b!8097))

(assert (not b!8101))

(assert (not b!8095))

(assert (not start!1531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

