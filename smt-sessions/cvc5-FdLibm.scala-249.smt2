; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1539 () Bool)

(assert start!1539)

(declare-fun b!8190 () Bool)

(declare-fun e!4114 () Bool)

(declare-fun e!4119 () Bool)

(assert (=> b!8190 (= e!4114 e!4119)))

(declare-fun res!6792 () Bool)

(assert (=> b!8190 (=> (not res!6792) (not e!4119))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3908 () (_ BitVec 32))

(assert (=> b!8190 (= res!6792 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3908 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3908) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8190 (= lt!3908 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8191 () Bool)

(declare-fun res!6790 () Bool)

(declare-fun e!4120 () Bool)

(assert (=> b!8191 (=> (not res!6790) (not e!4120))))

(declare-datatypes ((array!607 0))(
  ( (array!608 (arr!267 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!267 (_ BitVec 32))) )
))
(declare-fun f!79 () array!607)

(declare-fun fInv!0 (array!607) Bool)

(assert (=> b!8191 (= res!6790 (fInv!0 f!79))))

(declare-fun res!6793 () Bool)

(assert (=> start!1539 (=> (not res!6793) (not e!4114))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1539 (= res!6793 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1539 e!4114))

(declare-fun array_inv!217 (array!607) Bool)

(assert (=> start!1539 (array_inv!217 f!79)))

(declare-fun q!51 () array!607)

(assert (=> start!1539 (array_inv!217 q!51)))

(assert (=> start!1539 true))

(declare-fun xx!50 () array!607)

(assert (=> start!1539 (array_inv!217 xx!50)))

(declare-fun b!8192 () Bool)

(declare-fun res!6794 () Bool)

(assert (=> b!8192 (=> (not res!6794) (not e!4120))))

(declare-fun qInv!0 (array!607) Bool)

(assert (=> b!8192 (= res!6794 (qInv!0 q!51))))

(declare-fun b!8193 () Bool)

(declare-fun res!6789 () Bool)

(assert (=> b!8193 (=> (not res!6789) (not e!4114))))

(declare-fun xxInv!0 (array!607) Bool)

(assert (=> b!8193 (= res!6789 (xxInv!0 xx!50))))

(declare-fun lt!3911 () array!607)

(declare-fun b!8194 () Bool)

(declare-datatypes ((Unit!543 0))(
  ( (Unit!544) )
))
(declare-datatypes ((tuple3!128 0))(
  ( (tuple3!129 (_1!185 Unit!543) (_2!185 (_ BitVec 32)) (_3!164 array!607)) )
))
(declare-fun e!4117 () tuple3!128)

(declare-fun lt!3910 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!607 (_ BitVec 32) array!607) tuple3!128)

(assert (=> b!8194 (= e!4117 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3910 lt!3911))))

(declare-fun b!8195 () Bool)

(assert (=> b!8195 (= e!4119 e!4120)))

(declare-fun res!6791 () Bool)

(assert (=> b!8195 (=> (not res!6791) (not e!4120))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8195 (= res!6791 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3909 () tuple3!128)

(assert (=> b!8195 (= lt!3909 e!4117)))

(declare-fun c!907 () Bool)

(assert (=> b!8195 (= c!907 (bvsle lt!3910 (bvadd (bvsub (size!267 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8195 (= lt!3910 #b00000000000000000000000000000000)))

(assert (=> b!8195 (= lt!3911 (array!608 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8196 () Bool)

(declare-fun Unit!545 () Unit!543)

(assert (=> b!8196 (= e!4117 (tuple3!129 Unit!545 lt!3910 lt!3911))))

(declare-fun b!8197 () Bool)

(assert (=> b!8197 (= e!4120 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000010) #b10000000000000000000000000000000)))))))

(assert (= (and start!1539 res!6793) b!8193))

(assert (= (and b!8193 res!6789) b!8190))

(assert (= (and b!8190 res!6792) b!8195))

(assert (= (and b!8195 c!907) b!8194))

(assert (= (and b!8195 (not c!907)) b!8196))

(assert (= (and b!8195 res!6791) b!8191))

(assert (= (and b!8191 res!6790) b!8192))

(assert (= (and b!8192 res!6794) b!8197))

(declare-fun m!16081 () Bool)

(assert (=> b!8193 m!16081))

(declare-fun m!16083 () Bool)

(assert (=> b!8191 m!16083))

(declare-fun m!16085 () Bool)

(assert (=> b!8194 m!16085))

(declare-fun m!16087 () Bool)

(assert (=> start!1539 m!16087))

(declare-fun m!16089 () Bool)

(assert (=> start!1539 m!16089))

(declare-fun m!16091 () Bool)

(assert (=> start!1539 m!16091))

(declare-fun m!16093 () Bool)

(assert (=> b!8192 m!16093))

(push 1)

(assert (not b!8192))

(assert (not start!1539))

(assert (not b!8191))

(assert (not b!8194))

(assert (not b!8193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

