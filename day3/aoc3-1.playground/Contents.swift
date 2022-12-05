import Cocoa

var input = """
gvNbShZZgQfWdQhdPQmggLTFLwmwjFqjVVgM
CsJnHllcsnnnnJrGRnRwPPLVmFLHLBjFFVHmPT
JlnCtctJnJDcJlDCRpPrSSQWfphzWZfbZSvfNfbS
WjvRSdSQjvpjWzNlnZlNZqCCMzZZ
nJtJsbctPBPwLNcDZNNGLClC
tsFJHBgJwgJbnvSHHWVWHhVhpQ
zRzPhCCSHVZzfGHZ
qBsWBpqBwBcvqqWgdfZrprdggPHHVZ
WWmvwvBbnWmnwvWcbmWWnqNCRSDRRSSjjSDbPJbRjClLhC
rQrznfHHhrHzllzlzTGcJgtJ
jhhjjSZVPWVZvSFtTttLTglgFtvm
dqSCqVWdbDSSVqbVVSqhNdrnpnCnfsnnwfnsRpMpBMrf
rTnvrSSHvHtnDQVDtfmW
ZjCglhcCJschpZbZgbtGmRtbGmwtQtbmtN
FFZCghFJhlslFpjcdFTPLHHmrqTMTdzBLHLH
WzDfrDwwDCCDMnfDHHJjTHTtNdngdHtQ
FmScGPPPPmpspchbGHtRsjdJJJWJWNttgH
bvhFlVhPchPvqWLwqLWqvq
RcchVlCCvmhDRjNJJJjbjllZlJ
wPwFGFMPfpdtqbpwFFfGPQZTWTZjtzQWTBBQJzZjZZ
fbwPqqMPwdgvmDVDhmRCgR
SSQggtQVQQgQGmGVthVnWDGjCBLLzdDNCCjDGWCW
RcHcHbFqbPMZRFTvHFFFlcZZBNBtNjjLLjDdjLjDqWCpNLpj
sPPclZcsZtMPfVsnnwwVJhmQ
jlrwpVPjMwfzZfhfwddH
DbQBGgBJPPBBHfPZ
ggGSQTnTgQGbSRQRPrNlsjVjMrpmMLnrrW
MzNNbMSrZNSSvGWWznwGQlTG
ZCFCJHqJFjqTTqngPwPG
LCJLJCCFtfjsJCMbZSMSbbcDdBfd
LCdjljfJJBfLDCCdJqGqsGGtmBsWtbGmSS
gpgchRcPgRRQNZcpNhgNPzzmGrmrGwtSSswqrSGbbTzt
QgQvNppRPQcggZNccchvNZgCjlnsDLDflDdfjLfMDVsMLv
jfSfTWfwTJffQQNwTCHnGGGgHbgqGFvF
LmspctdsLDlBLPmFFgqbqFFbqlnSRS
PSZZsctsDDtdBmzBLBSmpJjMzWwjVfwJVMrNfwrfzf
zFZqbRNRHNHhqHFqzNnzzqDQVFMggMgDpmJMTgpVTQFJ
SwLVsSWBfStDGMfDTDGGGT
vlCBVsSvCRrHRjCqrn
ndGVddlVdrcGlGcljdVGjCgfffPCCLfCMvqWvPnqgn
FNtRZBDDSNSNStDhFRNQtLgCMTCBqvLMMTfJqBLPLP
bwQwZhSDFhZbFSNccwzwHmHHjHMwsd
BrSDgqrgWzWDwJBzMDWBLjpmVLFfFPLVJjVVPLFV
cNnRlvNRvQTcnZwmfQGPmfVFPP
dsCNllvTdnntTlTsHcdCRtNRBDWBDWDrWBhDBqMBDqbzWwCr
stLcchcTwRcsVTtftVVthchqmmCCFvWmmgSgQFCwGvWSFCrr
PljDbZbzjllHdQNWHMFGrMMHMFrmmM
njjjzbPdqRcRQQns
BTBLwzmqWNbpzqNzLppLBnhZJcJSHThhnnJZHHSQnr
RfQgDjgsjVfRFDdvddtvhhhJCnrSnMZCcMSCSJ
QRtjtRQQlzlqqzzzBW
FnzllplJMntnzptLFzsjTVSQcSjSjQFFmdQQ
wgwrBrwGHPGBqHrDcpmjddSQTmTGVmmG
DBhhNBrCrMvNvzptpN
LgSbLLRJQSzLCgJRJhWCCzRBdZdcMfcHsMdFFjfPjsCHBc
nrVTnmrrrlnGGmrlVwVZPFHmdsZHBmjMcdjfcZ
wrnTlNpvVVrqFrtnwGqwwrTpSgSQQLbQRzQSQRJbQpDbQz
pgvmcpVcpwJppwgwvMWfHbRGRHDBJbWGfGGb
hQqFqQNhqdCPNhTQCCFbbjmBHBbBRjGHBDBGFj
TtdCCNlPCmssnqgvzzvvtVrgzzrc
JltddTSgtLLvgvdldgvWPZPPSjWMjCfWNjNWPG
FrwpbwhbmfjGRpGPNM
cmBrBcBnmFBQqcFbscBhQfttznJgzlLLDlnglzLLlg
mDhRsDzWZzGhhhWpZwzwGdfbFsfFTQTLcNFfFrNvvcbT
ngMHjjgVgqHnPlnqtnClMHbfCJFbcLFFJFLbrQNbFQcQ
SlqHqVVqPnBHSHHljlMndBdZQphRhdGpzWmWWwBh
hVNhcfbSSNMfjjMlqRCqpdzpRJdnhl
sBHPPwQwttBBssLCHzDBlDDmRmpJdqJJJd
sHHwtsHTWwtZPHtZbbVSgMbGCNjNvN
SgMtSMVChFBHBFdCwhdqPcPsbRVQqsblDbRmlc
jlrLWfvWvzWWzmcQcqcNbmNDjR
JpLznrnfGrrfnWWzTpfvzvdHHCgSBwdlTMhCTMFhBBwg
fptnFPLsttddDdRhQShQzC
BqGHGlqmmGmlJmNmqlbbCzSCQHDzSjHhfSShjfVh
fbrrMqGGBlNMGNqrqglmrLZwFcwgFwsPcscctpWLgn
TCMMTtWBqCMMMWWMSWhNFhlNBNlNHwNDsvhw
frfdrbZJrVLdZLbnJcrmvhlhHshlgsZsHwwghZ
fLRVvcvRVpfbcfVVJTqpWCCSqCCTTtjjPj
vRCGzdTtvdBCTzCdmVsQjnVttngthgnQHs
rLNZlrwrjrFLMsggsQpsQngqMq
NfjZWcbffDrLZfNLbDczvmcTvvGCmCBBmSdP
DSqdzrHgJtSHMgvmnNGdcmCnvssN
ZwQLlVlRVVWZFZhbJZVjRJscvBGcpssLpBcnGpBsmpBs
TwwjjQJTjlhwMfTDgMrfgtqg
HhvVhgddvdvqTqVqHQgjgmCPWGrcWsGWPcvlsWrWmC
lbJBBFbMlJFRCmsRmRPtCtwm
FMLLpDLnFpFJbDfLnZZSzhqHVdVQjgSdlQTZ
mvBrszzsrrrGsBDvBvszDRQDhjCwWdLhJdCjjWZdqqdZdW
gMlfFVccTGMGPMSCdcLLdqhjLJWWdZ
VfggggPVltVSlSlHfgFtTpfRGmRrrrvQpQsrGmnvnQbzmz
HjtMgWbHBtbtcggVcHwMwcdzpZFGzGZFpvFFZZWnnpFG
RNNrfmSrSSzdGBzFfJFq
mNsSrrTPPRshmsBClRClPmSccVgQVHjHwtHwTMbTVwMHgg
pZmmLpQLDJBCPCssJTsCTc
SwlLwWvSwNSSSMSMfWLvvVdPFzjfTscdjcCsjzCPddFc
vbVMqGbLSVMhDQnRRQnBqH
lNmNwlmlbhhfFNgpJLnHfTHfTdnTML
BGvCwVGVPSDWDMMJTHZMpndH
rVcBrPSPCwWqPwGCBCSrqlNNQFhsQhtlhhhgNQtb
HqZCQRQgWjpmZHRHqQjttGGJQNQtwQGGGbGrJz
SlddfFVMLncbJJMzMzzMwD
ndSznsdVHsqgpZvH
sNStMtNtDztrvrRGPRRRRrNzqcchgJJLqnBScBcJThJggJBT
QCWWZbCbCVjVbFVFbVwbnhqLqhghBLwwTqJJcpgTBL
ZlHjfHHFWFjCdbHlQFnfdnZFMzPzrrlMrtrrGRMsDPrGvGPz
NnDHhNNldhNTdHllpptCRtftzmGBGmVRVGRH
wgZgZJLBwqgLSWrBvZVVzmffWzRmGsGmmssm
bgqPBBLbPbrrZBjjlpjccjDdDchFTNlc
WRWNNRWNfLZtsmtSWrtLmWgTcMcPrpMTcVMMPPBBqjcg
QJJDFbpnpJdlcwcgBTqlgPwc
GJFHJGhHnpWWShpsRS
DHDZvDQWdHJMHlJf
RhhnGLnBtGrnLjwwJTTMTdQccllSMQ
rmFrrBGQLQFLjbFnBhQLhrRGCPVDWzgmpsWvWWDzppWpzCvC
bsrJrWgWJvQRqbbRDNGGZDlwNfNfwS
ttCHThhhcBVpTBcdhdpfNGDSQLwDLfDGfQllCG
jFjzcFhzQTTjHFvJsrPPnnFgPb
SZggDgNLGCQzSgRsljscPvPPbHsBNc
TtFfTpMthzhFFTpdMMJPfjPPWjBbHbjPlPPBjj
dpdttMMTJttzMFhqFwGLgGRSrrQGSZrwRrDQ
JsJntWmghjgJTpfgFCczlztzrDZDtDzC
QddBBdBSPPPHBSVHVHvNdPVRClvlcclCDLCLFRFrrDLcZc
NVwBVSNlSBNHngnngsJWhwWh
hQVWJGWJlJQDGJHQWHpVWJVHmfPGPcjfdLdLSrcCmfjPjCPm
wgwnRwMvNvBvFZMngNvFZCjdSSfcbPLjCbcdCbSf
wgnRvMMvjMsTwngTgnnDVDWJDplHWhlhQWlWDT
WGswWFGsBFwHvjnbnnJjbG
gLDrSrPpLfmmDqqbbJZsjvmvRv
DTldTpTsDLgSsLpfPTslVdVVdNWVzcNwtWdWhzVt
sttWrhWZsLVtJVZrWhgbCPQQbDNVCHglnnlN
vvRRRMqpmTjwFqmfjFjmBMwNbCwQNgHgDnbNnHQHQCDg
THpvmBGfzWGzSzzS
nmZwwfPmNggwgPgNmdvPPhTRHTHBJTsvSP
WDccMzVQzGWcrllLdsGTvTsJJBLTdL
pWtzQrzDlrCpcQztlzCCCpCVFFFwtgmfbjmbqwZjZfmFwfdw
bmMNNMVSRWBWCSmVRdMRmMnvZZscvvszGcnZClpcGsvZ
gfLfDDtDgjgDtWTjFQjHsvvpZqqplfvvcllcnnvG
TFPjDtWPNPwBBBNB
QcTCHcTwdpQgcWzWwvMPRzSGwW
sDNjfhVmnlVffmLNfLbMPPDbqGtMSRWtDMtP
fZjJJshhhLNnrCJScHSccTQQ
qfhBhLLjvMqWWBWjsQGrdrGzpszpGrqd
JTSDHFtlTDbHTcFcDbTHzmrNRdRRbNzrmRRnRpnQ
PHcltTgJDlplgptScCfCgWMVfvfZvhMMBV
rttDPglHZZDDDPHgZtgWBswdsTfpfdplLqfsFfFdfd
cRVvpcmpmRSCGGCcMQmQFqNNqdVdqTbLwNbdFfFs
zhGjRhSvcMtnrpZjHZBg
STNrrzVdTJwsBggwFgBN
WbtMWJJpwpDsLBfP
cbvncCCmWtCGMcZHVVSlJVQrzvzVqQ
MtPVBHVbBBTwbvWgRgvF
LhZjZpnnMRwWfhSh
LQcQCLCCCcnmnqZpcrpnrjQlsBMHddtMGGzrJHPPsHsNPPJz
NbZtmZDmNNDBHBhDNtNGcvpmgLmmFrvprgrFGv
djMjffMdqnVVTdMfTPnQSFScFFVSLLFrvccvcllL
PPdPwMQwTMWDwBDZLHZN
DqpJFdhtmdSwpqSncljHsnfjqlbzlc
rQVZLGMWPCNrCGMwNVMcbzsVgfHHgfncfscssH
NBCrPLwMTrrMBLQLwCFhpFBDFdFFtdvDFvpD
QRwGBdGwqRTBMWRMMzBqQHHhngspPFFbHbzgbhZLLP
rCNmDjvrCFpvLZsgPb
lDrmpcfCtVDtCjlfNfQQqVdJBQWRVVRMMMJQ
zcgjlRcJCFtlnTvppn
BLSHDMVPVPHVHwFwMhTvgnFZMh
DsLSDdmPVNVdGgrzCCdbjc
tjjRbNQtvJVVsvqsvdTsGqBp
wlFLPZPzzzrzwZPmZfZPlrmpLDCpWDWCSTCpppDDBssdWG
rwwcFFghFmgTcNRJNnnNJtHV
RLhbzMhccqLzdjghdFddNWPN
DmsTZfvrfJLPPWwrdFgw
LsmDtQDfLLGbGQbSzcpM
qwhmmHlHmlwChcCWlpPCBzjPVdBzLsdLBVsT
DnJDMqRDsPsjRVQR
tSGSnNNSbrJJGfDSSfbchpvptFwmpcvlHqZlcF
rdQdBRPrQBBnfdBbzLLgLgmbzSLCPW
TcRTcFDTcjvswMWzzgLSzwwSLJbL
MNTRMNGTsFMMqqqcMDTTnfpBhQhNpHZBZHBfrptQ
ZZFwcQGwRGLTGLTl
rJtMrqBVvhBCnlCn
WWWMttbqqzfPWqWJVzmDQwFQlwZwjQfjgFcZ
RhgmdBbLLmRvhGZwhZZJDwGq
ldPpTtTPtVPpfTGzJQFGFqJsFG
MPpCnrlCVfPtrPVtntllnbdHSbnBvvgdgHgnWvSv
nbnfjQbQZBqBvjQdVFGHhsQhsFsFzGpD
RSJSTTcCVTTMlSNcSTRRwTccpwDFDDzFhHhtwppssFGGpsDp
clcTNJlLMgrcgRvBjfWVfWfBrrZn
LHQdpQLQDRcDBQccVQpnNRhllzMtRqzRztTNnt
mrvZPZvZvZbPSFJrSrggFvrJzbhlzttTlNtqtsMtTntntdqq
GPfJPJwfZFrmFvrPmgHHQLQWdHQBwWWCHVVC
TvTTLfflhZmwZLvtJmhdFhMpnWrpnbJcWMnpHzMrzbcn
VqRRNGCBjRmqPGqDzbHMcMccWnzngHnP
jNqNBjsDsDRCNVsmBRNQNRSSSddhZvLhddZhvhwvLTZwhSfT
vjpJvpgpNwjDWvvJLhFLLhNRTmPTRPRF
HHbHVrMHMmqzHlGmtGqMtdLCLQthQQPCSPTSFLLPRT
bZZzbHszMrqzGmrHMBzbHbqJjffcDgwWjDJpnjjcscwgnw
fBHDMNhhHMrBDBrfQqfwwvvLvfjLZZ
lmppmGJgPPpddJVdnwsQjLttqtjZTpcsvT
RndRmlGWJgdRnWQJQgWdQPlFFbhhbFbHbHMhhBbRDRFrrS
tVhwlMdMWlhlZMZMlzWrtRpBNpLPpmnmCPQBLppPPPBz
GvGTsgjcTLRQHmTQ
gGRGbfbgbcSbbcRggvfcwlZVhVMfltddVtrlZdhW
PwjPHwWssqrHqCqprpCPjwrrQnnDbdnQnGQHnbZbGQZbBQdD
WvNtLhfLndnBNbJJ
fvhvvWfTmtzTmjpsVVqsPzMjjq
GjHMMTMfZbnqHnJNCN
rlpQpthdlQbnlJqRzqVL
spphwcpBvcvdvFTqPDFfwwPZTG
mQfqmtpfBHJCHdlMDB
cbbPPsZqjqcSvVsCrDllsrdzrzzD
TSbVTvShqnVjPTPbggSPbNFQWGtfNLtFfWgGmGgGWR
HJtwgJJwJrcjRRjRnwhVdrVbmGhPmNNrGhdV
fWFvTDssTDMCBCWsvszWWMCQhZhLLNvNNbhVGGZdRZRdmhmd
zCTBzWzDDCDCfFCRqCJHcJJctjJSgHpqHqJg
dgnwgbcwVGbgDWnQbjdgDnBRBBNNqRLBNMLFRMRlqNsc
fTZHmTmzJMmSSCZChZvZTHRlBNBFqtqftlqssqNqftts
JTHJvhzCHpmPCSSTzPpPzJHgQVdQQjQdQwjgdpgdDMGgQM
qPGmWLJWBRRdvqvvNq
TnZHsTZsZsZZbDtbrNrdnDft
SShhQQZCHQCSTVlllVVQCjQWNJGFWpWgFpmmVmNgLgFpGw
TsSmttWMVstNfbMfBcpnFchFwFwZNrrwFp
DWWCGlHWdhddwpcrjh
gQvPqglRCHCHCPCPCJbbtSVVWtTVVJvTbs
ddHSZQHDStZStLtsdDpbCbBPcjGGCqCMBGdNPb
hWhvmglVznzglgzvzfznwfnfscswPjbMBMjNGBMPGMcjcPwP
sJWsJfVflWsnhrltrZLFDDRRFTSSLT
qqCqLNjnPPLZPjqnDjLNgnNrcGwtgddGrhprBJhhJtBGJG
lTMDsDHmlRRbQQbVfMHFmMBJhwcTddrcpBBGdGGJcJdB
lHFfQFssFFFMQRVWQVlssLnDSLLPvZZPqWCLWSqjvS
pJPZRpQtpPQpGPqWbqlWTdLVLJbT
nnnjCwgrgcCFBfnggBCsMTVbVsWVWdCTTdbb
cfhcnwnrcggrncrwcjBDcGHmNPRRGRZZQRRdDZzmzH
NqTrrzLpTNdLLJBBcBGGZGpFHB
sWbgfHSfSgVgZcmGtStZwBFG
VjQjjPjhbbfsCbbDQCgsDrRhzMdlNzHTRdRhqdNTrq
GlqfPdvdBqPgfqDgFMsMVDppbsNJNpMs
WnmmWCTCjZnmzRjTZRRnFBMNpbZZpFJMSFSNFSbS
TRRrnLBmzjttRRCmTRjjwLlvdhQvdrhqqlGdPqGggPlQ
McjMPgPgGPHJWjhPNgPqQbpQSfqffnWVnnnpnZ
BwwDmBTLRBBLzBTBTvtVqlfpqfbQqpqZbnQFlt
rDsDBsmvRTBRzCTZsTmCsCrLPgNcPHNhPccNHHrjMNrgdNdP
GqmLFDrcglvQGZwwzj
nlHbSNBhhslJfsBfvdZHdCvRzdCzppzR
JWShMfWMMthSJBBthJsgtcTTcFqcTrmTLrrTlr
CsBsShBWsBWhvFJWCSsJpbTZdTbdBRgHffRlHHHBgH
tqmnwwwDmVwfzZblzTRqzQ
DGtDjGMcntMGnnGhhjJJJsCpFRRSJJ
GQVVcGgFGcSFvfcFfJVnQmdbTwMLwTTnbnQMws
ZqZrDWDtNPPHRNPzGCdndLLMLwMWhwbmLddn
DRqRHCHlCtDrqtNqDplfpvGFjVjvBSFFcj
zfSfdGPdMVHHdcMThhpwqqrwrqJhcF
vlDNTWDDWWnngNQZtgwLrJZqLFZLFJpFJjJJ
NCtWmnvBmDnWQVTmTGSRmmRTPz
LLvppVLDsppGMGCLCCwNmJMNrNHrNmNNmHFjrh
lZZfvfgRPZQWNNmlWlFNHl
nnRtndRbcPttvTpswLTs
trtzWfszNPlhPlgrWglhZjSLDBvTfSDTmSvmLvfS
QMdVVGBQMTJDvSjdHJ
nBppGVVnQQgzgPsPzzhp
fVQzVrQVtVzHwjtMTjcTCjFgcDCGCd
JslDPWLbLbZlJBMgBTBPdcFTFd
JNJmZsDLnLDWmsVqSrHqnHqQwQSq
mLMZRMRmZLmHLLjNshrrJjRsNNsj
PnqnBVBPcpWrWfWzDhDsHW
qpBQgcQncqpBcVgtclHqcSMTLZZQvLLZdLdwCmLMSd
PZgMwZMjPgBCWgZFgmBGSTtwcccztTzbnGDcNT
vJLlvvlfdsVVslVHrrpLfRlDcSScmbSnnRGDnbDTSbSSDt
fvVHdLfLQljmmqqMQPhQ
DZRstNGrDWGRMlzLHLMpNSpp
bPgCrCvgnrCPgwplbMSjfHzHfj
CgnFnBVrFFVmdVggmPPVTTcZBGhRqGtcZqqJhGRGssWs
WrrCGrDlWhBBZtHB
ggdcnQpcPRSpzfvJBTfPJvtP
gSNnSBFnSMBNjpMssDmCrrGmCLqq
szZGZGGwNdVtpwvbzptzVBQQLFclTJQFlHJNcFBRRJ
CTrqSfWThWDjJCcLQRRRFLlQ
rggqfMqPWnDqnVbZvTtPZpssVw
GJHqPPcJnhthNHnL
rzzlVDVTQDzSSdsSlzpBspssLhmZNjhZWjjffWBLZhgBmnjt
TSTQTsnTbDsMvCGwcFvbJR
PPjtzdnCnSjSthPjWJgJWjgMNBsNrT
bZHfLLhvhpbfvLhHfQbqpNJTWWNsqNTrTNrgWN
ZFbZZFvlRvZwhQwLDSdGnmCGmnlmdznD
RFRRhzzsRsszRlhbrhgBcbTfHgBT
pJtNmSgwZNtSJLgSqHcbBDDTHPfrSqTc
ZNWdpNCJtLZpQJLLpmLtZNFGjVgFnsngRGllVsjjCnvs
sJVRJmmmwwlmzcszMzjRjJVzspCZBsZTTFpTTZvSZTFBFbtZ
GhNDgNWnGGqDvFSCZvbtFpvg
fWrCNNffGnhWdrPhWjwjzRlJmcjRcPzlmV
FdncmqmgcZztLWFvFFvjWLlT
RsMMJVpfhJVsDVMfJpvlTWTvhjQSQvCbLCSC
jDBjRrsVfNJgzdZrZwtmZt
THDDQLZTGQQLQDSSTBCZSZHfFrvvlVRRlPVFfVrvqnvnnH
VbWWcgbNpjgPrRvrNfqnzv
swggwpJWwsWscJsDSLTJTmSVZJTBDZ
wGsznPGGBHdzHhtHDD
WMVSWqVmrSBMpvWVMFtdClhDtqDDHhdtQt
RgWVRcmgnPPnjJBg
BmfPBHBFswLLjQQnLCnzzW
SRdvvRSGrdlRSvTgRrMVCjVWCZzMnVZhWzTj
vlSRJrRJvbGGrSSJgWvlScptFmwbmfHHBfsNFmBbfsFm
"""

struct Rucksack {
    var items: String
    var firstCompartment: [Character] = []
    var secondCompartment: [Character] = []
    var sharedItem: [Character] = []
    var priorityOfSharedItem: Int = 0
    
    // De items in de rugzak over de 2 verschillende compartimenten verdelen
    mutating func placeItemsInCompartments() {
        let itemsInRucksack = Array(self.items)
        self.firstCompartment = Array(itemsInRucksack[0 ..< itemsInRucksack.count/2])
        self.secondCompartment = Array(itemsInRucksack[itemsInRucksack.count/2 ..< itemsInRucksack.count])
    }
    
    // Zoek het item dat in beide compartimenten van deze rugzak aanwezig is
    mutating func findSharedItemInCompartments() {
        var sharedItem: [Character] = []
        // als item in compartiment1 ook aanwezig is in compartiment2, voeg het dan toe aan gedeelde waarde. loop over alle waardes van compartiment1
        for itemInFirstCompartment in self.firstCompartment {
            for itemInSecondCompartment in self.secondCompartment {
                if itemInFirstCompartment == itemInSecondCompartment {
                    sharedItem.append(itemInFirstCompartment)
                }
            }
        }
        self.sharedItem = sharedItem
    }
    
    // Bereken de letterwaarde van het sharedItem
    mutating func calculatePriorityOfSharedItem() {
        // maak onderscheid tussen kleine letter en hoofdletter
        if sharedItem[0].isLowercase {
            // letterwaarde = ascii waarde - ascii waarde van a + 1
            self.priorityOfSharedItem = Int(sharedItem[0].asciiValue! - Character("a").asciiValue! + 1)
        } else {
            // letterwaarde = 26 + ascii waarde - ascii waarde van a
            self.priorityOfSharedItem = Int(Character(sharedItem[0].lowercased()).asciiValue! - Character("a").asciiValue! + 27)
        }
    }

}

struct GroupOfElves {
    var groupSize : Int = 1
    var badge: [Character] = []
    var badgePriority: Int = 0
    var allItemsOfGroup: [String] = []
    var itemsOfAllElves: [[Character]] = []
    
    // Zoek het item dat in elke rugzak van deze groep aanwezig is en sla hem op als badge van deze groep
    mutating func findBadge() {
        // Maak van de itemstring een array die alle afzonderlijke letters als waardes bevat en sla diezelfde array op als 1 waarde in een array. loop over alle itemstrings.
        for itemsOfAnElve in self.allItemsOfGroup {
            itemsOfAllElves.append(Array(itemsOfAnElve))
        }
        // betere oplossing dan in rucksack i guess. derde for loop te moeilijk, zou beter rucksack aanpassen
        self.badge.append(contentsOf: itemsOfAllElves[0].filter(itemsOfAllElves[1].filter(itemsOfAllElves[2].contains).contains))
    }
    
    // Bereken de letterwaarde van de badge (kopie van calculatePriorityOfSharedItem())
    mutating func calculatePriorityOfBadge() {
        if badge[0].isLowercase {
            self.badgePriority = Int(badge[0].asciiValue! - Character("a").asciiValue! + 1)
        } else {
            self.badgePriority = Int(Character(badge[0].lowercased()).asciiValue! - Character("a").asciiValue! + 27)
        }
    }
}


// Part 1
var sharedItems: [Character] = []
var priorityOfSharedItems: [Int] = []
// Splits input in lijnen en zet elke lijn als aparte waarde in een array
var rucksackContents = input.components(separatedBy: "\n")

// Maak een rugzak van elke lijn en bewaar de lijn als items in de rugzak
for rucksackContent in rucksackContents {
    var rucksack = Rucksack(items: rucksackContent)
    rucksack.placeItemsInCompartments()
    rucksack.findSharedItemInCompartments()
    // sla van elke rugzak het sharedItem op in een array van sharedItems
    sharedItems.append(rucksack.sharedItem[0])
    rucksack.calculatePriorityOfSharedItem()
    // sla  elke letterwaarde van elk shareditem in een array van letterwaardes
    priorityOfSharedItems.append(rucksack.priorityOfSharedItem)
}
// tel alle letterwaardes uit sharedITems op
let sumOfPriorities = priorityOfSharedItems.reduce(0, +)

// Part 2 en die arrays met shareditems zijn useless, zou beter aanpassen naar unieke values
var allGroups: [GroupOfElves] = []
var groupOfElves = GroupOfElves()

// ok dus maak groepen van 3 elfjes en sla hun ittems op in allItemsOfGroup
for rucksackContent in rucksackContents {
    groupOfElves.allItemsOfGroup.append(rucksackContent)
    if groupOfElves.groupSize == 3 {
        allGroups.append(groupOfElves)
        groupOfElves.groupSize = 1
        groupOfElves.allItemsOfGroup = []
    } else {
        groupOfElves.groupSize += 1
    }
}


var badges: [Character] = []
var priorityOfBadges: [Int] = []

// vraag naar waarom je hier for var group moest typen ipv for group
for var group in allGroups {
    //bereken de badge van de groep en voeg toe aan badges
    group.findBadge()
    badges.append(group.badge[0])
    //bereken de letterwaarde van de badge van de groep en voeg toe aan de rest
    group.calculatePriorityOfBadge()
    priorityOfBadges.append(group.badgePriority)
}

// bereken som van badgeprioriteiten
let sumOfBadgePriorities = priorityOfBadges.reduce(0, +)

