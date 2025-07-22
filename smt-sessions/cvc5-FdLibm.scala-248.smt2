; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1537 () Bool)

(assert start!1537)

(declare-fun b!8166 () Bool)

(declare-datatypes ((array!605 0))(
  ( (array!606 (arr!266 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!266 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!540 0))(
  ( (Unit!541) )
))
(declare-datatypes ((tuple3!126 0))(
  ( (tuple3!127 (_1!184 Unit!540) (_2!184 (_ BitVec 32)) (_3!163 array!605)) )
))
(declare-fun e!4098 () tuple3!126)

(declare-fun lt!3897 () (_ BitVec 32))

(declare-fun lt!3899 () array!605)

(declare-fun Unit!542 () Unit!540)

(assert (=> b!8166 (= e!4098 (tuple3!127 Unit!542 lt!3897 lt!3899))))

(declare-fun b!8167 () Bool)

(declare-fun res!6772 () Bool)

(declare-fun e!4099 () Bool)

(assert (=> b!8167 (=> (not res!6772) (not e!4099))))

(declare-fun f!79 () array!605)

(declare-fun fInv!0 (array!605) Bool)

(assert (=> b!8167 (= res!6772 (fInv!0 f!79))))

(declare-fun b!8168 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8168 (= e!4099 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000011) #b10000000000000000000000000000000)))))))

(declare-fun b!8169 () Bool)

(declare-fun e!4095 () Bool)

(assert (=> b!8169 (= e!4095 e!4099)))

(declare-fun res!6773 () Bool)

(assert (=> b!8169 (=> (not res!6773) (not e!4099))))

(assert (=> b!8169 (= res!6773 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3898 () tuple3!126)

(assert (=> b!8169 (= lt!3898 e!4098)))

(declare-fun xx!50 () array!605)

(declare-fun c!904 () Bool)

(assert (=> b!8169 (= c!904 (bvsle lt!3897 (bvadd (bvsub (size!266 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8169 (= lt!3897 #b00000000000000000000000000000000)))

(assert (=> b!8169 (= lt!3899 (array!606 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8170 () Bool)

(declare-fun res!6774 () Bool)

(declare-fun e!4097 () Bool)

(assert (=> b!8170 (=> (not res!6774) (not e!4097))))

(declare-fun xxInv!0 (array!605) Bool)

(assert (=> b!8170 (= res!6774 (xxInv!0 xx!50))))

(declare-fun b!8171 () Bool)

(assert (=> b!8171 (= e!4097 e!4095)))

(declare-fun res!6775 () Bool)

(assert (=> b!8171 (=> (not res!6775) (not e!4095))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3896 () (_ BitVec 32))

(assert (=> b!8171 (= res!6775 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3896 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3896) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8171 (= lt!3896 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8172 () Bool)

(declare-fun res!6771 () Bool)

(assert (=> b!8172 (=> (not res!6771) (not e!4099))))

(declare-fun q!51 () array!605)

(declare-fun qInv!0 (array!605) Bool)

(assert (=> b!8172 (= res!6771 (qInv!0 q!51))))

(declare-fun b!8173 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!605 (_ BitVec 32) array!605) tuple3!126)

(assert (=> b!8173 (= e!4098 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3897 lt!3899))))

(declare-fun res!6776 () Bool)

(assert (=> start!1537 (=> (not res!6776) (not e!4097))))

(assert (=> start!1537 (= res!6776 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1537 e!4097))

(declare-fun array_inv!216 (array!605) Bool)

(assert (=> start!1537 (array_inv!216 f!79)))

(assert (=> start!1537 (array_inv!216 q!51)))

(assert (=> start!1537 true))

(assert (=> start!1537 (array_inv!216 xx!50)))

(assert (= (and start!1537 res!6776) b!8170))

(assert (= (and b!8170 res!6774) b!8171))

(assert (= (and b!8171 res!6775) b!8169))

(assert (= (and b!8169 c!904) b!8173))

(assert (= (and b!8169 (not c!904)) b!8166))

(assert (= (and b!8169 res!6773) b!8167))

(assert (= (and b!8167 res!6772) b!8172))

(assert (= (and b!8172 res!6771) b!8168))

(declare-fun m!16067 () Bool)

(assert (=> b!8172 m!16067))

(declare-fun m!16069 () Bool)

(assert (=> start!1537 m!16069))

(declare-fun m!16071 () Bool)

(assert (=> start!1537 m!16071))

(declare-fun m!16073 () Bool)

(assert (=> start!1537 m!16073))

(declare-fun m!16075 () Bool)

(assert (=> b!8173 m!16075))

(declare-fun m!16077 () Bool)

(assert (=> b!8167 m!16077))

(declare-fun m!16079 () Bool)

(assert (=> b!8170 m!16079))

(push 1)

(assert (not b!8170))

(assert (not b!8167))

(assert (not b!8173))

(assert (not start!1537))

(assert (not b!8172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

