import NodeCameraView from './camera'
import NodePlayerView from './player'
import { NativeModules } from 'react-native'

module.exports = {
  NodeCameraView,
  NodePlayerView,
  NodeMediaClient: NativeModules.NodeMediaClient,
}
