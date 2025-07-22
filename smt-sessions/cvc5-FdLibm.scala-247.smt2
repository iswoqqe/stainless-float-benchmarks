; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1535 () Bool)

(assert start!1535)

(declare-fun b!8142 () Bool)

(declare-fun res!6755 () Bool)

(declare-fun e!4073 () Bool)

(assert (=> b!8142 (=> (not res!6755) (not e!4073))))

(declare-datatypes ((array!603 0))(
  ( (array!604 (arr!265 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!265 (_ BitVec 32))) )
))
(declare-fun q!51 () array!603)

(declare-fun qInv!0 (array!603) Bool)

(assert (=> b!8142 (= res!6755 (qInv!0 q!51))))

(declare-fun b!8143 () Bool)

(declare-fun res!6756 () Bool)

(assert (=> b!8143 (=> (not res!6756) (not e!4073))))

(declare-fun f!79 () array!603)

(declare-fun fInv!0 (array!603) Bool)

(assert (=> b!8143 (= res!6756 (fInv!0 f!79))))

(declare-fun b!8145 () Bool)

(declare-fun e!4076 () Bool)

(assert (=> b!8145 (= e!4076 e!4073)))

(declare-fun res!6757 () Bool)

(assert (=> b!8145 (=> (not res!6757) (not e!4073))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8145 (= res!6757 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!537 0))(
  ( (Unit!538) )
))
(declare-datatypes ((tuple3!124 0))(
  ( (tuple3!125 (_1!183 Unit!537) (_2!183 (_ BitVec 32)) (_3!162 array!603)) )
))
(declare-fun lt!3887 () tuple3!124)

(declare-fun e!4078 () tuple3!124)

(assert (=> b!8145 (= lt!3887 e!4078)))

(declare-fun c!901 () Bool)

(declare-fun lt!3886 () (_ BitVec 32))

(declare-fun xx!50 () array!603)

(assert (=> b!8145 (= c!901 (bvsle lt!3886 (bvadd (bvsub (size!265 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8145 (= lt!3886 #b00000000000000000000000000000000)))

(declare-fun lt!3885 () array!603)

(assert (=> b!8145 (= lt!3885 (array!604 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8146 () Bool)

(declare-fun res!6754 () Bool)

(declare-fun e!4077 () Bool)

(assert (=> b!8146 (=> (not res!6754) (not e!4077))))

(declare-fun xxInv!0 (array!603) Bool)

(assert (=> b!8146 (= res!6754 (xxInv!0 xx!50))))

(declare-fun b!8147 () Bool)

(assert (=> b!8147 (= e!4073 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(declare-fun b!8148 () Bool)

(assert (=> b!8148 (= e!4077 e!4076)))

(declare-fun res!6753 () Bool)

(assert (=> b!8148 (=> (not res!6753) (not e!4076))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3884 () (_ BitVec 32))

(assert (=> b!8148 (= res!6753 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3884 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3884) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8148 (= lt!3884 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8149 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!603 (_ BitVec 32) array!603) tuple3!124)

(assert (=> b!8149 (= e!4078 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3886 lt!3885))))

(declare-fun b!8144 () Bool)

(declare-fun Unit!539 () Unit!537)

(assert (=> b!8144 (= e!4078 (tuple3!125 Unit!539 lt!3886 lt!3885))))

(declare-fun res!6758 () Bool)

(assert (=> start!1535 (=> (not res!6758) (not e!4077))))

(assert (=> start!1535 (= res!6758 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1535 e!4077))

(declare-fun array_inv!215 (array!603) Bool)

(assert (=> start!1535 (array_inv!215 f!79)))

(assert (=> start!1535 (array_inv!215 q!51)))

(assert (=> start!1535 true))

(assert (=> start!1535 (array_inv!215 xx!50)))

(assert (= (and start!1535 res!6758) b!8146))

(assert (= (and b!8146 res!6754) b!8148))

(assert (= (and b!8148 res!6753) b!8145))

(assert (= (and b!8145 c!901) b!8149))

(assert (= (and b!8145 (not c!901)) b!8144))

(assert (= (and b!8145 res!6757) b!8143))

(assert (= (and b!8143 res!6756) b!8142))

(assert (= (and b!8142 res!6755) b!8147))

(declare-fun m!16053 () Bool)

(assert (=> b!8143 m!16053))

(declare-fun m!16055 () Bool)

(assert (=> start!1535 m!16055))

(declare-fun m!16057 () Bool)

(assert (=> start!1535 m!16057))

(declare-fun m!16059 () Bool)

(assert (=> start!1535 m!16059))

(declare-fun m!16061 () Bool)

(assert (=> b!8149 m!16061))

(declare-fun m!16063 () Bool)

(assert (=> b!8142 m!16063))

(declare-fun m!16065 () Bool)

(assert (=> b!8146 m!16065))

(push 1)

(assert (not b!8149))

(assert (not b!8142))

(assert (not start!1535))

(assert (not b!8146))

(assert (not b!8143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

