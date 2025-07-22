; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1721 () Bool)

(assert start!1721)

(declare-fun res!7471 () Bool)

(declare-fun e!4782 () Bool)

(assert (=> start!1721 (=> (not res!7471) (not e!4782))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1721 (= res!7471 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1721 e!4782))

(declare-datatypes ((array!659 0))(
  ( (array!660 (arr!286 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!286 (_ BitVec 32))) )
))
(declare-fun f!79 () array!659)

(declare-fun array_inv!236 (array!659) Bool)

(assert (=> start!1721 (array_inv!236 f!79)))

(declare-fun q!51 () array!659)

(assert (=> start!1721 (array_inv!236 q!51)))

(assert (=> start!1721 true))

(declare-fun xx!50 () array!659)

(assert (=> start!1721 (array_inv!236 xx!50)))

(declare-fun b!9062 () Bool)

(declare-fun e!4779 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!9062 (= e!4779 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!9063 () Bool)

(declare-fun res!7472 () Bool)

(assert (=> b!9063 (=> (not res!7472) (not e!4782))))

(declare-fun xxInv!0 (array!659) Bool)

(assert (=> b!9063 (= res!7472 (xxInv!0 xx!50))))

(declare-fun b!9064 () Bool)

(declare-fun res!7468 () Bool)

(assert (=> b!9064 (=> (not res!7468) (not e!4779))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9064 (= res!7468 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9065 () Bool)

(declare-fun e!4785 () Bool)

(assert (=> b!9065 (= e!4785 e!4779)))

(declare-fun res!7470 () Bool)

(assert (=> b!9065 (=> (not res!7470) (not e!4779))))

(assert (=> b!9065 (= res!7470 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!642 0))(
  ( (Unit!643) )
))
(declare-datatypes ((tuple3!166 0))(
  ( (tuple3!167 (_1!218 Unit!642) (_2!218 (_ BitVec 32)) (_3!183 array!659)) )
))
(declare-fun lt!4394 () tuple3!166)

(declare-fun e!4784 () tuple3!166)

(assert (=> b!9065 (= lt!4394 e!4784)))

(declare-fun lt!4395 () (_ BitVec 32))

(declare-fun c!1006 () Bool)

(assert (=> b!9065 (= c!1006 (bvsle lt!4395 (bvadd (bvsub (size!286 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9065 (= lt!4395 #b00000000000000000000000000000000)))

(declare-fun lt!4396 () array!659)

(assert (=> b!9065 (= lt!4396 (array!660 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9066 () Bool)

(declare-fun res!7467 () Bool)

(assert (=> b!9066 (=> (not res!7467) (not e!4779))))

(assert (=> b!9066 (= res!7467 (bvsle i!190 jz!36))))

(declare-fun b!9067 () Bool)

(declare-fun res!7465 () Bool)

(assert (=> b!9067 (=> (not res!7465) (not e!4779))))

(assert (=> b!9067 (= res!7465 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9068 () Bool)

(declare-fun res!7464 () Bool)

(assert (=> b!9068 (=> (not res!7464) (not e!4779))))

(declare-fun fInv!0 (array!659) Bool)

(assert (=> b!9068 (= res!7464 (fInv!0 f!79))))

(declare-fun b!9069 () Bool)

(assert (=> b!9069 (= e!4782 e!4785)))

(declare-fun res!7466 () Bool)

(assert (=> b!9069 (=> (not res!7466) (not e!4785))))

(declare-fun lt!4397 () (_ BitVec 32))

(assert (=> b!9069 (= res!7466 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4397 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4397) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9069 (= lt!4397 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9070 () Bool)

(declare-fun res!7463 () Bool)

(assert (=> b!9070 (=> (not res!7463) (not e!4779))))

(assert (=> b!9070 (= res!7463 (Q!0 (select (arr!286 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9071 () Bool)

(declare-fun Unit!644 () Unit!642)

(assert (=> b!9071 (= e!4784 (tuple3!167 Unit!644 lt!4395 lt!4396))))

(declare-fun b!9072 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!659 (_ BitVec 32) array!659) tuple3!166)

(assert (=> b!9072 (= e!4784 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4395 lt!4396))))

(declare-fun b!9073 () Bool)

(declare-fun res!7469 () Bool)

(assert (=> b!9073 (=> (not res!7469) (not e!4779))))

(declare-fun qInv!0 (array!659) Bool)

(assert (=> b!9073 (= res!7469 (qInv!0 q!51))))

(assert (= (and start!1721 res!7471) b!9063))

(assert (= (and b!9063 res!7472) b!9069))

(assert (= (and b!9069 res!7466) b!9065))

(assert (= (and b!9065 c!1006) b!9072))

(assert (= (and b!9065 (not c!1006)) b!9071))

(assert (= (and b!9065 res!7470) b!9068))

(assert (= (and b!9068 res!7464) b!9073))

(assert (= (and b!9073 res!7469) b!9066))

(assert (= (and b!9066 res!7467) b!9064))

(assert (= (and b!9064 res!7468) b!9067))

(assert (= (and b!9067 res!7465) b!9070))

(assert (= (and b!9070 res!7463) b!9062))

(declare-fun m!16595 () Bool)

(assert (=> start!1721 m!16595))

(declare-fun m!16597 () Bool)

(assert (=> start!1721 m!16597))

(declare-fun m!16599 () Bool)

(assert (=> start!1721 m!16599))

(declare-fun m!16601 () Bool)

(assert (=> b!9064 m!16601))

(assert (=> b!9064 m!16601))

(declare-fun m!16603 () Bool)

(assert (=> b!9064 m!16603))

(declare-fun m!16605 () Bool)

(assert (=> b!9068 m!16605))

(declare-fun m!16607 () Bool)

(assert (=> b!9073 m!16607))

(declare-fun m!16609 () Bool)

(assert (=> b!9063 m!16609))

(declare-fun m!16611 () Bool)

(assert (=> b!9067 m!16611))

(assert (=> b!9067 m!16611))

(declare-fun m!16613 () Bool)

(assert (=> b!9067 m!16613))

(declare-fun m!16615 () Bool)

(assert (=> b!9070 m!16615))

(assert (=> b!9070 m!16615))

(declare-fun m!16617 () Bool)

(assert (=> b!9070 m!16617))

(declare-fun m!16619 () Bool)

(assert (=> b!9072 m!16619))

(push 1)

(assert (not b!9067))

(assert (not b!9068))

(assert (not b!9063))

(assert (not b!9064))

(assert (not b!9070))

(assert (not b!9072))

(assert (not b!9073))

(assert (not start!1721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

