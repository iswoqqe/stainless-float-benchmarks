; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1533 () Bool)

(assert start!1533)

(declare-fun b!8118 () Bool)

(declare-fun e!4055 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8118 (= e!4055 (and (bvsle i!190 jz!36) (bvslt (bvsub (bvadd jz!36 #b00000000000000000000000000000001) i!190) #b00000000000000000000000000000000)))))

(declare-fun b!8119 () Bool)

(declare-fun e!4051 () Bool)

(declare-fun e!4052 () Bool)

(assert (=> b!8119 (= e!4051 e!4052)))

(declare-fun res!6737 () Bool)

(assert (=> b!8119 (=> (not res!6737) (not e!4052))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3874 () (_ BitVec 32))

(assert (=> b!8119 (= res!6737 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3874 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3874) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8119 (= lt!3874 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8121 () Bool)

(declare-datatypes ((array!601 0))(
  ( (array!602 (arr!264 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!264 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!534 0))(
  ( (Unit!535) )
))
(declare-datatypes ((tuple3!122 0))(
  ( (tuple3!123 (_1!182 Unit!534) (_2!182 (_ BitVec 32)) (_3!161 array!601)) )
))
(declare-fun e!4054 () tuple3!122)

(declare-fun lt!3873 () (_ BitVec 32))

(declare-fun lt!3872 () array!601)

(declare-fun Unit!536 () Unit!534)

(assert (=> b!8121 (= e!4054 (tuple3!123 Unit!536 lt!3873 lt!3872))))

(declare-fun b!8122 () Bool)

(assert (=> b!8122 (= e!4052 e!4055)))

(declare-fun res!6735 () Bool)

(assert (=> b!8122 (=> (not res!6735) (not e!4055))))

(assert (=> b!8122 (= res!6735 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3875 () tuple3!122)

(assert (=> b!8122 (= lt!3875 e!4054)))

(declare-fun c!898 () Bool)

(declare-fun xx!50 () array!601)

(assert (=> b!8122 (= c!898 (bvsle lt!3873 (bvadd (bvsub (size!264 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8122 (= lt!3873 #b00000000000000000000000000000000)))

(assert (=> b!8122 (= lt!3872 (array!602 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8123 () Bool)

(declare-fun res!6740 () Bool)

(assert (=> b!8123 (=> (not res!6740) (not e!4051))))

(declare-fun xxInv!0 (array!601) Bool)

(assert (=> b!8123 (= res!6740 (xxInv!0 xx!50))))

(declare-fun b!8124 () Bool)

(declare-fun res!6739 () Bool)

(assert (=> b!8124 (=> (not res!6739) (not e!4055))))

(declare-fun f!79 () array!601)

(declare-fun fInv!0 (array!601) Bool)

(assert (=> b!8124 (= res!6739 (fInv!0 f!79))))

(declare-fun b!8125 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!601 (_ BitVec 32) array!601) tuple3!122)

(assert (=> b!8125 (= e!4054 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3873 lt!3872))))

(declare-fun res!6738 () Bool)

(assert (=> start!1533 (=> (not res!6738) (not e!4051))))

(assert (=> start!1533 (= res!6738 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1533 e!4051))

(declare-fun array_inv!214 (array!601) Bool)

(assert (=> start!1533 (array_inv!214 f!79)))

(declare-fun q!51 () array!601)

(assert (=> start!1533 (array_inv!214 q!51)))

(assert (=> start!1533 true))

(assert (=> start!1533 (array_inv!214 xx!50)))

(declare-fun b!8120 () Bool)

(declare-fun res!6736 () Bool)

(assert (=> b!8120 (=> (not res!6736) (not e!4055))))

(declare-fun qInv!0 (array!601) Bool)

(assert (=> b!8120 (= res!6736 (qInv!0 q!51))))

(assert (= (and start!1533 res!6738) b!8123))

(assert (= (and b!8123 res!6740) b!8119))

(assert (= (and b!8119 res!6737) b!8122))

(assert (= (and b!8122 c!898) b!8125))

(assert (= (and b!8122 (not c!898)) b!8121))

(assert (= (and b!8122 res!6735) b!8124))

(assert (= (and b!8124 res!6739) b!8120))

(assert (= (and b!8120 res!6736) b!8118))

(declare-fun m!16039 () Bool)

(assert (=> b!8124 m!16039))

(declare-fun m!16041 () Bool)

(assert (=> b!8125 m!16041))

(declare-fun m!16043 () Bool)

(assert (=> b!8123 m!16043))

(declare-fun m!16045 () Bool)

(assert (=> b!8120 m!16045))

(declare-fun m!16047 () Bool)

(assert (=> start!1533 m!16047))

(declare-fun m!16049 () Bool)

(assert (=> start!1533 m!16049))

(declare-fun m!16051 () Bool)

(assert (=> start!1533 m!16051))

(push 1)

(assert (not b!8123))

(assert (not b!8125))

(assert (not b!8120))

(assert (not b!8124))

(assert (not start!1533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

