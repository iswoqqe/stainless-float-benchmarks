; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1541 () Bool)

(assert start!1541)

(declare-fun b!8214 () Bool)

(declare-fun res!6810 () Bool)

(declare-fun e!4141 () Bool)

(assert (=> b!8214 (=> (not res!6810) (not e!4141))))

(declare-datatypes ((array!609 0))(
  ( (array!610 (arr!268 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!268 (_ BitVec 32))) )
))
(declare-fun q!51 () array!609)

(declare-fun qInv!0 (array!609) Bool)

(assert (=> b!8214 (= res!6810 (qInv!0 q!51))))

(declare-fun b!8215 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8215 (= e!4141 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8216 () Bool)

(declare-datatypes ((Unit!546 0))(
  ( (Unit!547) )
))
(declare-datatypes ((tuple3!130 0))(
  ( (tuple3!131 (_1!186 Unit!546) (_2!186 (_ BitVec 32)) (_3!165 array!609)) )
))
(declare-fun e!4136 () tuple3!130)

(declare-fun lt!3920 () (_ BitVec 32))

(declare-fun lt!3921 () array!609)

(declare-fun Unit!548 () Unit!546)

(assert (=> b!8216 (= e!4136 (tuple3!131 Unit!548 lt!3920 lt!3921))))

(declare-fun res!6809 () Bool)

(declare-fun e!4135 () Bool)

(assert (=> start!1541 (=> (not res!6809) (not e!4135))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1541 (= res!6809 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1541 e!4135))

(declare-fun f!79 () array!609)

(declare-fun array_inv!218 (array!609) Bool)

(assert (=> start!1541 (array_inv!218 f!79)))

(assert (=> start!1541 (array_inv!218 q!51)))

(assert (=> start!1541 true))

(declare-fun xx!50 () array!609)

(assert (=> start!1541 (array_inv!218 xx!50)))

(declare-fun b!8217 () Bool)

(declare-fun e!4139 () Bool)

(assert (=> b!8217 (= e!4139 e!4141)))

(declare-fun res!6812 () Bool)

(assert (=> b!8217 (=> (not res!6812) (not e!4141))))

(assert (=> b!8217 (= res!6812 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3922 () tuple3!130)

(assert (=> b!8217 (= lt!3922 e!4136)))

(declare-fun c!910 () Bool)

(assert (=> b!8217 (= c!910 (bvsle lt!3920 (bvadd (bvsub (size!268 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8217 (= lt!3920 #b00000000000000000000000000000000)))

(assert (=> b!8217 (= lt!3921 (array!610 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8218 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!609 (_ BitVec 32) array!609) tuple3!130)

(assert (=> b!8218 (= e!4136 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3920 lt!3921))))

(declare-fun b!8219 () Bool)

(declare-fun res!6808 () Bool)

(assert (=> b!8219 (=> (not res!6808) (not e!4141))))

(declare-fun fInv!0 (array!609) Bool)

(assert (=> b!8219 (= res!6808 (fInv!0 f!79))))

(declare-fun b!8220 () Bool)

(declare-fun res!6811 () Bool)

(assert (=> b!8220 (=> (not res!6811) (not e!4135))))

(declare-fun xxInv!0 (array!609) Bool)

(assert (=> b!8220 (= res!6811 (xxInv!0 xx!50))))

(declare-fun b!8221 () Bool)

(assert (=> b!8221 (= e!4135 e!4139)))

(declare-fun res!6807 () Bool)

(assert (=> b!8221 (=> (not res!6807) (not e!4139))))

(declare-fun lt!3923 () (_ BitVec 32))

(assert (=> b!8221 (= res!6807 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3923 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3923) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8221 (= lt!3923 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1541 res!6809) b!8220))

(assert (= (and b!8220 res!6811) b!8221))

(assert (= (and b!8221 res!6807) b!8217))

(assert (= (and b!8217 c!910) b!8218))

(assert (= (and b!8217 (not c!910)) b!8216))

(assert (= (and b!8217 res!6812) b!8219))

(assert (= (and b!8219 res!6808) b!8214))

(assert (= (and b!8214 res!6810) b!8215))

(declare-fun m!16095 () Bool)

(assert (=> b!8219 m!16095))

(declare-fun m!16097 () Bool)

(assert (=> b!8214 m!16097))

(declare-fun m!16099 () Bool)

(assert (=> b!8220 m!16099))

(declare-fun m!16101 () Bool)

(assert (=> b!8218 m!16101))

(declare-fun m!16103 () Bool)

(assert (=> start!1541 m!16103))

(declare-fun m!16105 () Bool)

(assert (=> start!1541 m!16105))

(declare-fun m!16107 () Bool)

(assert (=> start!1541 m!16107))

(push 1)

(assert (not start!1541))

(assert (not b!8219))

(assert (not b!8214))

(assert (not b!8218))

(assert (not b!8220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

